Rails.application.routes.draw do

  resources :podcasts
  resources :moods
  resource :user
  resources :sessions
  resources :playlists
  resources :likes

  delete "sessions", to: "sessions#destroy"
  get "user", to: "users#show"
  delete "likes", to: "likes#destroy"


end
