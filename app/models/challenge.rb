class Challenge < ApplicationRecord
  belongs_to :user_game
  belongs_to :games_artworks
end
