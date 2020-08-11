class Hand < ApplicationRecord
  belongs_to :player
  belongs_to :card
end
