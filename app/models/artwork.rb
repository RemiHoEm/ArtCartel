class Artwork < ApplicationRecord
  has_many :games_artworks
  has_many :games, through: :games_artworks
  has_many :artworks_categories
  has_many :categories, through: :artworks_categories
end
