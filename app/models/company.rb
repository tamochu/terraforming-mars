class Company < ApplicationRecord
  belongs_to :tag, optional: true
  has_many :company_initial_resource
  
  def self.initial_company
    Company.where(id: 999).first_or_create(name: "未設定", detail: "企業を選択していません。")
  end
end
