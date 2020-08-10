Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: "users/omniauth_callbacks"
  }
  devise_scope :user do
    delete '/log_out', to: 'devise/sessions#destroy'
  end
  
  root 'static_pages#home'
  get '/about', to: 'static_pages#about'

  resources :games, only: [ :index, :new, :create, :show, :destroy ]
end
