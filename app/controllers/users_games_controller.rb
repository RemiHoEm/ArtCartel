class UsersGamesController < ApplicationController

  def show
    @users_game = UsersGame.find(params[:id])
  end
end
