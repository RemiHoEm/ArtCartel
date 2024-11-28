class Challenge < ApplicationRecord
  belongs_to :users_game
  belongs_to :games_artwork
  has_one :artwork, through: :games_artwork
end
