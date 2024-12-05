class ChallengesController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create]

  #not finished, need to add the logic that we do not show same artwork in one game & not only artworks from one category
  def new
    @games_artwork = GamesArtwork.find(params[:games_artwork_id])
    @challenge = Challenge.new
    @artwork = @games_artwork.artwork
    @markers =
      [{
        lat: @artwork.latitude,
        lng: @artwork.longitude
      }]
    game = @games_artwork.game
    users_game = UsersGame.find_by(game: game, user: current_user)
    @users_game = users_game
    @current_challenge = @games_artwork.position
    if @games_artwork.last?
      @next_page_path = users_game_path(users_game)
    else
      @next_games_artwork = @games_artwork.game.games_artworks.find_by(position: @games_artwork.position + 1)
      @next_page_path = new_games_artwork_challenge_path(@next_games_artwork)
    end
  end

  #not finished yet, add pop up with result and answer and potentially more
  def create
    @games_artwork = GamesArtwork.find(params[:games_artwork_id])
    game = @games_artwork.game
    users_game = UsersGame.find_by(game: game, user: current_user)

    @challenge = Challenge.find_by(users_game: users_game, games_artwork: @games_artwork)
    # @challenge = @challenge || Challenge.new(users_game: users_game, games_artwork: @games_artwork)
    @challenge ||= Challenge.new(users_game: users_game, games_artwork: @games_artwork)
    @challenge.assign_attributes(challenge_params)

    if @challenge.save!

      user_latitude = params[:latitude].to_f
      user_longitude = params[:longitude].to_f
      user_date = Date.new(params[:creation_date].to_i) # Assurez-vous que la date est bien envoyée
      user_artist = params[:artist]

      artwork = Artwork.find(@games_artwork.artwork.id)
      if artwork.artist == "anonyme"
        artist_score = 2000
      else
        fuzzy_artist = FuzzyMatch.new(Artwork.pluck(:artist))
        corrected_artist_name = fuzzy_artist.find(user_artist)
        artist_score = corrected_artist_name == artwork.artist ? 2000 : 0
      end

      distance = haversine_distance(user_latitude, user_longitude, artwork.latitude, artwork.longitude)

      geoscore = calculate_geoscore(distance)
      puts "This is my #{geoscore}"

      time_score = calculate_time_score(user_date, artwork.creation_date)
      puts "we need the following from #{user_date}, from artwork#{artwork.creation_date}"

      total_score = geoscore + time_score + artist_score

      @challenge.artist_score = artist_score
      @challenge.time_score = time_score
      @challenge.geo_score = geoscore
      @challenge.score = total_score

      # Display in pop-up depending on answers of user
      @correct_artist_name = corrected_artist_name == artwork.artist

      @correct_date = user_date == artwork.creation_date

      if @challenge.save!

        render json: {
          artwork: { id: artwork.id, name: artwork.name, latitude: artwork.latitude, longitude: artwork.longitude },
          user_coordinates: { lat: user_latitude, lng: user_longitude }.to_json,
          artwork_coordinates: { lat: artwork.latitude, lng: artwork.longitude }.to_json,
          distance: distance.to_i,
          geoscore: geoscore.to_i,
          time_score: time_score.to_i,
          artist_score: artist_score,
          total_score: total_score.to_i,
          is_last: @games_artwork.last?,
          correct_artist_name: @correct_artist_name,
          correct_date: @correct_date
        }, status: :ok

      else
        render :new, status: :unprocessable_entity
      end

      #if @games_artwork.last?
        #redirect_to users_game_path(users_game)
      #else
       # redirect_to new_games_artwork_challenge_path(game.games_artworks.find_by(position: @games_artwork.position + 1))
    end
    # else
    #   @artwork = @games_artwork.artwork
    #   @markers =
    #     [{
    #       lat: @artwork.latitude,
    #       lng: @artwork.longitude
    #     }]
    #   render :new, status: :unprocessable_entity
    # end
  end


  #def compare
    #Rails.logger.debug "Params: #{params.inspect}"  # Affiche les paramètres dans les logs
    # Coordonnées envoyées par Stimulus

      #Rails.logger.debug "User date: #{user_date}, Latitude: #{user_latitude}, Longitude: #{user_longitude}"

    # Récupérer l'œuvre active (par exemple via session ou autre logique)



    # Calculer la distance entre le point cliqué et l'œuvre
    # Calculer le Geoscore


    # Renvoyer la distance et le score
  #end

  #def create
  #  @challenge = Challenge.new(challenge_params)
  #  if @challenge.save
  #    redirect_to @challenge
  #  else
  #    render :new, status: :unprocessable_entity
  #  end
  #end


  private

  def challenge_params
    params.require(:challenge).permit(:artist, :creation_date, :longitude, :latitude, :games_artwork_id)
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

  def calculate_time_score(user_date, artwork_date)
    # Calculer la différence en jours
    date_diff = (user_date.year - artwork_date.to_i).abs
    # Paramètres de la formule (vous pouvez ajuster ces valeurs selon le besoin)
    max_score = 5000.0
    attenuation_factor = 0.9  # Moins affecté par de grandes différences de date que la distance géographique
    scaling_factor = 365.0    # Comparer sur l'échelle des jours dans une année (365 jours)

    # Calculer le Time Score basé sur la différence de date
    max_score * Math.exp(-attenuation_factor * date_diff / scaling_factor)
  end
end
