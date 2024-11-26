class Artwork < ApplicationRecord
  has_many :games_artworks, dependent: :destroy
  has_many :games, through: :games_artworks
  has_many :artworks_categories, dependent: :destroy
  has_many :categories, through: :artworks_categories
  has_one_attached :photo

  #détruire la photo sur Cloudinary si on détruit l'instance d'Artwork
  before_destroy :photo_purge

  def photo_purge
    photo.purge if photo.attached?
  end
  #détruire la photo sur Cloudinary si on détruit l'instance d'Artwork

  def culture
    categories.find_by(theme: "Culture")&.name
  end

  def museum
    categories.find_by(theme: "Museum")&.name
  end

  def technique
    categories.find_by(theme: "Technique")&.name
  end

end
