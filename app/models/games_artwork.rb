class GamesArtwork < ApplicationRecord
  belongs_to :game
  belongs_to :artwork

  def ordered_artworks
    game.games_artworks.order(:position)
  end

  def last?
    ordered_artworks.last == self
  end

  def first?
    ordered_artworks.first == self
  end

  def second?
    ordered_artworks.second == self
  end

  def third?
    ordered_artworks.third == self
  end

  def fourth?
    ordered_artworks.offset(3).first == self  # La 4ème position est à l'index 3
  end
end
