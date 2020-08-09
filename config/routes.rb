Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: "users/omniauth_callbacks"
  }
  root 'static_pages#home'
  get '/about', to: 'static_pages#about'
end
