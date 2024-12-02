class AddArtistScoreToChallenges < ActiveRecord::Migration[7.1]
  def change
    add_column :challenges, :artist_score, :float
  end
end
