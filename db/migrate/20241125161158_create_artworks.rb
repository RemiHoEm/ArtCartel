class CreateArtworks < ActiveRecord::Migration[7.1]
  def change
    create_table :artworks do |t|
      t.string :name
      t.string :artist
      t.float :longitude
      t.float :latitude
      t.integer :creation_date
      t.string :dimensions
      t.string :materials
      t.string :info_link
      t.string :attribution_licence

      t.timestamps
    end
  end
end
