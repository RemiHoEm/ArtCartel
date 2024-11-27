class ChallengesController < ApplicationController

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
    @challenge = Challenge.new(challenge_params)
    @challenge.games_artwork = @games_artwork
    game = @games_artwork.game
    users_game = UsersGame.find_by(game: game, user: current_user)
    @challenge.users_game = users_game
    if @challenge.save
      if @games_artwork.last?
        # TODO => redirect to score page
        # redirect_to users_game_path(users_game)
      else
        # redirect_to new_games_artwork_challenge_path(game.games_artworks.find_by(position: @games_artwork.position + 1))
      end
    else
      @artwork = @games_artwork.artwork
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
