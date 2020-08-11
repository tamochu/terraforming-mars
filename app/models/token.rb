class Token < ApplicationRecord
  belongs_to :game
  belongs_to :played_card
  belongs_to :resource
end
