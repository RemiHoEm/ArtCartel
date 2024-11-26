class Game < ApplicationRecord
  has_many :users_games
  has_many :users, through: :users_games
  has_many :games_artworks
  has_many: artworks, through: :games_artworks
end
