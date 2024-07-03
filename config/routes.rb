Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :restaurants, only: [:root, :index, :new, :create, :show] do
    resources :reviews, only: [:new, :create]
  # # Defines the root path route ("/")
  # # root "posts#index"
  root "restaurants#index"

  # # A visitor can see the list of all restaurants.
  # get "restaurants", to: "restaurants#index"
  # # A visitor can add a new restaurant.
  # get "restaurants/new", to: "restaurants#new"
  # post "restaurants", to: "restaurants#create"
  # # A visitor can see one restaurant.
  # get "restaurants/:id", to: "restaurants#show", as: :restaurant
  end
end
