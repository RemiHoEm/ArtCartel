class ChallengesController < ApplicationController

  #not finished, need to add the logic that we do not show same artwork in one game & not only artworks from one category
  def new
    @game_artwork = GameArtwork.find(params[:games_artwork_id])
    @challenge = Challenge.new
    @artwork = @game_artwork.artwork
    @markers =
      [{
        lat: @artwork.latitude,
        lng: @artwork.longitude
      }]
  end

  #not finished yet, add pop up with result and answer and potentially more
  def create
    @game_artwork = GameArtwork.find(params[:games_artwork_id])
    # @challenge = Challenge.new(challenge_params)
    if @challenge.save
      if @game_artwork.last?
        # TODO => redirect to score page
      else
        redirect_to new_games_artwork_challenge_path(@game.games_artworks.find_by(position: @game_artwork.position + 1))
      end
    else
      @artwork = @game_artwork.artwork
      @markers =
        [{
          lat: @artwork.latitude,
          lng: @artwork.longitude
        }]
      render :new, status: :unprocessable_entity
    end
  end

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
    params.require(:challenge).permit(:artist, :creation_date, :longitude, :latitude)
  end
end
