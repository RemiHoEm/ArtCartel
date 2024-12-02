class AddTimeScoreToChallenges < ActiveRecord::Migration[7.1]
  def change
    add_column :challenges, :time_score, :float
  end
end
