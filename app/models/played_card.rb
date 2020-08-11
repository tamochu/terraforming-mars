class PlayedCard < ApplicationRecord
  belongs_to :player
  belongs_to :card
  has_many :token
end
