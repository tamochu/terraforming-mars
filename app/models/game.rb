class Game < ApplicationRecord
  has_many :player
  has_many :deck
  has_many :game_log
  has_many :tile
  has_many :token
end
