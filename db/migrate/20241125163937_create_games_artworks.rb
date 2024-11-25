class CreateGamesArtworks < ActiveRecord::Migration[7.1]
  def change
    create_table :games_artworks do |t|
      t.integer :position
      t.references :game, null: false, foreign_key: true
      t.references :artwork, null: false, foreign_key: true

      t.timestamps
    end
  end
end
