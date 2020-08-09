Devise.setup do |config|
  require 'devise/orm/active_record'
  config.omniauth :google_oauth2,
                  ENV['GOOGLE_APP_ID'],
                  ENV['GOOGLE_APP_SECRET'],
                  name: :google
end
