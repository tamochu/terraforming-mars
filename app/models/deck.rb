class Deck < ApplicationRecord
  belongs_to :card
  belongs_to :game
end
