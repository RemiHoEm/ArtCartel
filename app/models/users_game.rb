class UsersGame < ApplicationRecord
  belongs_to :game
  belongs_to :user
  has_many :challenges

  def total_score
    challenges.sum(:score)
  end

end
