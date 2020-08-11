class Tag < ApplicationRecord
  belongs_to :resource, optional: true
end
