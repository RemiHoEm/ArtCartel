class GamesArtwork < ApplicationRecord
  belongs_to :game
  belongs_to :artwork

  def last?
    game.games_artworks.order(:position).last == self
  end
end
