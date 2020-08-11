class Company < ApplicationRecord
  belongs_to :tag
  has_many :company_initial_resource
end
