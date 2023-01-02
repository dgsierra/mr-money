Rails.application.routes.draw do
  devise_for :users
  get 'splash_page/index'
  resources :entities
  resources :groups
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "splash_page#index"
end
