class UsersGamesController < ApplicationController

  def show
    @users_game = UsersGame.find(params[:id])
  end

  def create
    if Game.find_by(invitation_code: params[:invitation_code][:invitation_code]).nil?
      redirect_to root_path, alert: "This code doesn't exist."
    else
      @game = Game.find_by(invitation_code: params[:invitation_code][:invitation_code])
      @user_game = UsersGame.create(game: @game, user: current_user)
      redirect_to new_games_artwork_challenge_path(@game.games_artworks.find_by(position: 1))
    end
  end
end
