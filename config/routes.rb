Rails.application.routes.draw do
  resources :rentals
  resources :subscriptions
  resources :games
  resources :accounts
  resources :consoles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "consoles#index"
end
