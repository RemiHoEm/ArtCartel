class GamesArtwork < ApplicationRecord
  belongs_to :game
  belongs_to :artwork
end
