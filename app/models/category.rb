class Category < ApplicationRecord
  has_many :artworks_categories
  has_many :artworks, through: :artworks_categories
end
