class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :my_games, class_name: "Game", foreign_key: 'owner_id', dependent: :destroy
  has_many :games, through: :offers
end
