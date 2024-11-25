class CreateChallenges < ActiveRecord::Migration[7.1]
  def change
    create_table :challenges do |t|
      t.string :artist
      t.float :longitude
      t.float :latitude
      t.integer :creation_date
      t.float :score

      t.timestamps
    end
  end
end
