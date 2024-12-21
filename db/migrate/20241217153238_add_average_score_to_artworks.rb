class AddAverageScoreToArtworks < ActiveRecord::Migration[7.1]
  def change
    add_column :artworks, :average_score, :float
  end
end
