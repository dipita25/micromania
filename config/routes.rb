Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'test#home'

  get "games", to: "games#index", as: :games
  get "games/new", to: "games#new", as: :gameNew
  get "games/:id", to: "games#show", as: :game
  post "games/", to: "games#create", as: :gameCreate
end
