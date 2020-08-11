class Player < ApplicationRecord
  belongs_to :user
  belongs_to :game
  belongs_to :company
  has_many :player_resource
  has_many :hand
  has_many :played_card
end
