Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: "users/omniauth_callbacks"
  }
  devise_scope :user do
    delete '/log_out', to: 'devise/sessions#destroy'
  end
  
  root 'static_pages#home'
  get '/about', to: 'static_pages#about'
  
  get '/hoge', to: 'games#hoge'
end
