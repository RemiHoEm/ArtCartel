class ChallengesController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:compare]

  #not finished, need to add the logic that we do not show same artwork in one game & not only artworks from one category
  def new
    @challenge = Challenge.new
    @artwork = Artwork.find(Artwork.pluck(:id).sample)
    @markers =
      [{
        lat: @artwork.latitude,
        lng: @artwork.longitude
      }]
  end

  #not finished yet, add pop up with result and answer and potentially more
  def create
    @challenge = Challenge.new(challenge_params)
    if @challenge.save
      redirect_to @challenge
    else
      render :new, status: :unprocessable_entity
    end
  end

  def compare
    Rails.logger.debug "Params: #{params.inspect}"  # Affiche les paramètres dans les logs
    # Coordonnées envoyées par Stimulus
    user_latitude = params[:latitude].to_f
    user_longitude = params[:longitude].to_f
    user_date = Date.new(params[:date].to_i) # Assurez-vous que la date est bien envoyée

      Rails.logger.debug "User date: #{user_date}, Latitude: #{user_latitude}, Longitude: #{user_longitude}"

    # Récupérer l'œuvre active (par exemple via session ou autre logique)
    artwork = Artwork.find(params[:artwork_id].to_i)

    # Calculer la distance entre le point cliqué et l'œuvre
    distance = haversine_distance(user_latitude, user_longitude, artwork.latitude, artwork.longitude)
    # Calculer le Geoscore
    geoscore = calculate_geoscore(distance)

    time_score = calculate_time_score(user_date, artwork.creation_date)

    # Renvoyer la distance et le score
    render json: { 
      artwork: { id: artwork.id, name: artwork.name, latitude: artwork.latitude, longitude: artwork.longitude },
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

  def calculate_time_score(user_date, artwork_date)
    # Calculer la différence en jours
    date_diff = (user_date.year - artwork_date.year).abs

    # Paramètres de la formule (vous pouvez ajuster ces valeurs selon le besoin)
    max_score = 5000.0
    attenuation_factor = 0.1  # Moins affecté par de grandes différences de date que la distance géographique
    scaling_factor = 365.0    # Comparer sur l'échelle des jours dans une année (365 jours)

    # Calculer le Time Score basé sur la différence de date
    max_score * Math.exp(-attenuation_factor * date_diff / scaling_factor)
  end
end
