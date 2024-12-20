class UsersGamesController < ApplicationController

  def show
    @users_game = UsersGame.find(params[:id])

    @game_id = @users_game.game_id
    puts "Its my number of the game #{@game_id}"

    @players_scores = User.joins(users_games: :challenges)
                          .where(users_games: { game_id: @game_id })
                          .group('users.id') # Group by user to sum their scores
                          .select('users.username, SUM(challenges.score) AS total_score')
                          .order('total_score DESC') # Optional: order by total score

    @ranking = 1

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
