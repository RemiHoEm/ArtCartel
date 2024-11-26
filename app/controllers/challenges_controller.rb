class ChallengesController < ApplicationController
  def new
    @challenge = Challenge.new
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

  private

  def challenge_params
    params.require(:challenge).permit(:artist, :creation_date, :longitude, :latitude)
  end
end
