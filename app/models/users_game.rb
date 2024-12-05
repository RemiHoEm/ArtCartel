class UsersGame < ApplicationRecord
  belongs_to :game
  belongs_to :user
  has_many :challenges
  validates :user, uniqueness: {scope: :game}

  def total_score
    challenges.sum(:score)
  end

end
