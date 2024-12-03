class GamesController < ApplicationController

  def create
    @game = GameCreator.new.call
    @game.users << current_user
    redirect_to new_games_artwork_challenge_path(@game.games_artworks.find_by(position: 1))
  end

  def challenge_friend
    @game = GameCreator.new.call
    @game.users << current_user
    render json: {
      invitation_code: @game.invitation_code,
      challenge_path: new_games_artwork_challenge_path(@game.games_artworks.find_by(position: 1))
    }.to_json
  end
end
