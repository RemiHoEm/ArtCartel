class ArtworksCategory < ApplicationRecord
  belongs_to :category
  belongs_to :artwork
end
