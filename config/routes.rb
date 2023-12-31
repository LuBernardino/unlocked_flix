Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :movies
  # Defines the root path route ("/")
  root "home#index"

  get "movies/:id", to:"movies#show", as: 'movie_details'
end
