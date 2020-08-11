class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :trackable, :omniauthable, omniauth_providers: %i(google)
  has_many :player
  
  protected
  def self.find_for_google(auth)
    user = User.find_by(email: auth.info.email)
    
    unless user
      user = User.create(name: auth.info.name,
                         email: auth.info.email,
                         password: Devise.friendly_token[0, 20])
    end
    user
  end
end
