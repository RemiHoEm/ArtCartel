class Category < ApplicationRecord
  has_many :artworks_categories, dependent: :destroy
  has_many :artworks, through: :artworks_categories
end
