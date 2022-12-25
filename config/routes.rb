Rails.application.routes.draw do
  get 'control_users/index'
  get 'home/index'
  resources :services
  resources :statuses
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
