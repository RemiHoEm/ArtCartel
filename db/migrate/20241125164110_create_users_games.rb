class CreateUsersGames < ActiveRecord::Migration[7.1]
  def change
    create_table :users_games do |t|
      t.references :game, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
