class CardCondTag < ApplicationRecord
  belongs_to :tag
  belongs_to :card
end
