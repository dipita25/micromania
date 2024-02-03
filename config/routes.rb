Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  delete "games/:id", to: "games#destroy", as: :destroy_game
  root "games#index"
  get "games", to: "games#index"
  get "games/new", to: "games#new", as: :new_game
  get "games/:id", to: "games#show", as: :game
  post "games/", to: "games#create"
  get "games/:id/edit", to: "games#edit", as: :edit_game
  patch "games/:id", to: "games#update", as: :update_game

  get "bookings", to: "bookings#index"
  get "bookings/new/games/:id", to: "bookings#new", as: :new_booking
  #get "bookings/new", to: "bookings#new", as: :new_booking
  get "bookings/:id", to: "bookings#show", as: :booking
  post "bookings/", to: "bookings#create"
  get "bookings/:id/edit", to: "bookings#edit", as: :edit_booking
  patch "bookings/:id", to: "bookings#update", as: :update_booking
  delete "bookings/:id", to: "bookings#destroy", as: :destroy_booking
end
