class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :users_games
  has_many :games, through: :users_games
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
