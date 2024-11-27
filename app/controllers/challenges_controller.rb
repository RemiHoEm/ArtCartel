class ChallengesController < ApplicationController

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
  #def create
  #  @challenge = Challenge.new(challenge_params)
  #  if @challenge.save
  #    redirect_to @challenge
  #  else
  #    render :new, status: :unprocessable_entity
  #  end
  #end
#
  private

  def challenge_params
    params.require(:challenge).permit(:artist, :creation_date, :longitude, :latitude)
  end
end
