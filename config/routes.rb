Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "games#index"
  get "/test", to: 'test#home'

  get "games", to: "games#index"
  get "games/new", to: "games#new", as: :new_game
  get "games/:id", to: "games#show", as: :game
  post "games/", to: "games#create", as: :create_game
  get "games/:id/edit", to: "games#edit", as: :edit_game
  patch "games/:id", to: "games#update", as: :update_game
  delete "games/:id", to: "games#destroy", as: :destroy_game
end
