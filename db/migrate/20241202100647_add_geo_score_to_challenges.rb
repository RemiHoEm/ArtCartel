class AddGeoScoreToChallenges < ActiveRecord::Migration[7.1]
  def change
    add_column :challenges, :geo_score, :float
  end
end
