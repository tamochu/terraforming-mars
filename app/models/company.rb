class Company < ApplicationRecord
  belongs_to :tag, optional: true
  has_many :company_initial_resource
  
  def self.initialCompany
    @company = Company.find_by(name: "未設定")
    if @company.nil?
      logger.debug("before")
      logger.debug(@company)
      @company = Company.create!(name: "未設定", detail: "企業を選択していません。")
      logger.debug("after")
      logger.debug(@company)
    end
    @company
  end
end
