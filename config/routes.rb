Rails.application.routes.draw do
  get 'auth/new_session'
  post 'auth/create_session'
  get 'auth/logout'
  resources :rentals
  resources :subscriptions
  resources :games
  resources :accounts
  resources :consoles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "consoles#index"
end
