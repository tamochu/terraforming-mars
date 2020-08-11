class Card < ApplicationRecord
  has_many :card_cond_tag
  has_many :card_tag
end
