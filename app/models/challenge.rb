class Challenge < ApplicationRecord
  belongs_to :users_game
  belongs_to :games_artwork
  has_one :artwork, through: :games_artwork
  validates :users_game, uniqueness: { scope: :games_artwork }
end
