Rails.application.routes.draw do

  resources :podcasts
  resources :moods
  resource :user
  resources :sessions
  resources :playlists

  delete "sessions", to: "sessions#destroy"
  get "user", to: "users#show"

end
