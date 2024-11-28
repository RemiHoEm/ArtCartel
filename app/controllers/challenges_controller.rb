class ChallengesController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:compare]

  def new
    @games_artwork = GamesArtwork.find(params[:games_artwork_id])
    @challenge = Challenge.new
    @artwork = @games_artwork.artwork
    @markers = [{ lat: @artwork.latitude, lng: @artwork.longitude }]
    game = @games_artwork.game
    users_game = UsersGame.find_by(game: game, user: current_user)
    challenge_artist = @challenge.artist

    if params[:query]
      fuzzy_artist = FuzzyMatch.new(Artwork.pluck(:artist))
      @best_artist_match = fuzzy_artist.find(params[:query])
    end

    # Vérification que le match existe avant de calculer le score
    @artist_score = @best_artist_match && @best_artist_match == challenge_artist ? 100 : 50

    if @games_artwork.last?
      @next_page_path = users_game_path(users_game)
    else
      @next_games_artwork = @games_artwork.game.games_artworks.find_by(position: @games_artwork.position + 1)
      @next_page_path = new_games_artwork_challenge_path(@next_games_artwork)
    end
  end

  def create
    @games_artwork = GamesArtwork.find(params[:games_artwork_id])
    @challenge = Challenge.new(challenge_params)
    @challenge.games_artwork = @games_artwork
    game = @games_artwork.game
    users_game = UsersGame.find_by(game: game, user: current_user)
    @challenge.users_game = users_game

    if @challenge.save
      # Récupération de l'artiste et de la date de création
      user_artist = @challenge.artist
      user_year = @challenge.creation_date.year

      # Fuzzy matching pour l'artiste
      fuzzy_artist = FuzzyMatch.new(Artwork.pluck(:artist))
      corrected_artist_name = fuzzy_artist.find(user_artist)

      @artist_score = corrected_artist_name == @challenge.artwork.artist ? 100 : 0

      # Calcul du score pour la date de création (simple comparaison)
      challenge_year = @challenge.creation_date.year
      year_score = (user_year == challenge_year) ? 100 : 50

      time_score = ( @artist_score + year_score ) / 2

      # Calcul de la distance géographique
      artwork = @games_artwork.artwork
      user_latitude = params[:latitude].to_f
      user_longitude = params[:longitude].to_f
      distance = haversine_distance(user_latitude, user_longitude, artwork.latitude, artwork.longitude)
      geoscore = calculate_geoscore(distance)

      total_score = (geoscore + time_score) / 2

      # Passer les résultats à la vue
      @time_message = "Time Score: #{time_score.round(2)}"
      @geo_message = "Geo Score: #{geoscore.round(2)}"
      @total_message = "Total Score: #{total_score.round(2)}"

      @next_games_artwork = @games_artwork.game.games_artworks.find_by(position: @games_artwork.position + 1)
      @next_page_path = new_games_artwork_challenge_path(@next_games_artwork)

      if @games_artwork.last?
        @next_page_path = users_game_path(users_game)
      else
        @next_games_artwork = @games_artwork.game.games_artworks.find_by(position: @games_artwork.position + 1)
        @next_page_path = new_games_artwork_challenge_path(@next_games_artwork)
      end

      render :new
    else
      render :new, status: :unprocessable_entity
    end
  end

  def compare
    Rails.logger.debug "Params: #{params.inspect}"
    user_latitude = params[:latitude].to_f
    user_longitude = params[:longitude].to_f
    user_date = Date.new(params[:date].to_i)

    Rails.logger.debug "User date: #{user_date}, Latitude: #{user_latitude}, Longitude: #{user_longitude}"

    artwork = Artwork.find(params[:artwork_id].to_i)

    distance = haversine_distance(user_latitude, user_longitude, artwork.latitude, artwork.longitude)
    geoscore = calculate_geoscore(distance)

    user_artist = params[:artist]
    fuzzy_artist = FuzzyMatch.new(Artwork.pluck(:artist))

    best_artist_match = fuzzy_artist.find(user_artist)

    # Calculer le score pour l'artiste
    artist_score = best_artist_match == user_artist ? 100 : 50

    # Calcul de la différence de l'année de création
    user_year = user_date.year
    artwork_year = artwork.creation_date.year
    year_score = (user_year == artwork_year) ? 100 : 50

    time_score = (artist_score + year_score) / 2

    render json: {
      artwork: { id: artwork.id, name: artwork.name, artist: artwork.artist, creation_date: artwork.creation_date },
      distance: distance.round(2),
      geoscore: geoscore.round(2),
      time_score: time_score.round(2)
    }, status: :ok
  end

  private

  def challenge_params
    params.require(:challenge).permit(:artist, :creation_date, :longitude, :latitude)
  end

  def haversine_distance(lat1, lon1, lat2, lon2)
    rad_per_deg = Math::PI / 180
    earth_radius_km = 6371

    dlat_rad = (lat2 - lat1) * rad_per_deg
    dlon_rad = (lon2 - lon1) * rad_per_deg

    lat1_rad, lat2_rad = lat1 * rad_per_deg, lat2 * rad_per_deg

    a = Math.sin(dlat_rad / 2)**2 + Math.cos(lat1_rad) * Math.cos(lat2_rad) * Math.sin(dlon_rad / 2)**2
    c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a))

    earth_radius_km * c
  end

  def calculate_geoscore(distance)
    max_score = 5000.0
    attenuation_factor = 10.0
    scaling_factor = 14916.0

    max_score * Math.exp(-attenuation_factor * distance / scaling_factor)
  end
end
