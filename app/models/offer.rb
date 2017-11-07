class Offer < ApplicationRecord
  belongs_to :game
  belongs_to :game_exchange, class_name: "Game", foreign_key: "game_exchange_id"
  belongs_to :user
end
