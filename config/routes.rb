Rails.application.routes.draw do

  devise_for :users, defaults: {format: :json }
  resources :reservations
  resources :ships
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
