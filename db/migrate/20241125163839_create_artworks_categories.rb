class CreateArtworksCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :artworks_categories do |t|
      t.references :category, null: false, foreign_key: true
      t.references :artwork, null: false, foreign_key: true

      t.timestamps
    end
  end
end
