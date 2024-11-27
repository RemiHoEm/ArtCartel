class GamesController < ApplicationController

  def create
    @game = GameCreator.new.call
    @game.users << current_user
    redirect_to new_games_artwork_challenge_path(@game.games_artworks.find_by(position: 1))
  end
end
