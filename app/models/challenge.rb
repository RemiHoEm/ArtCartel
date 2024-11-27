class Challenge < ApplicationRecord
  belongs_to :users_game
  belongs_to :games_artwork
end
