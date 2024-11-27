class AddReferencesToChallenges < ActiveRecord::Migration[7.1]
  def change
    add_reference :challenges, :users_game, null: false, foreign_key: true
    add_reference :challenges, :games_artwork, null: false, foreign_key: true
  end
end
