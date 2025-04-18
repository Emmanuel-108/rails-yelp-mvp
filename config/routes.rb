Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # Other way

  # resources :restaurants do
  #   resources :reviews, only: [:new, :create]
  #   collection do
  #     get :top
  #   end

  #   member do
  #     get :review
  #   end
  # end

  # Read all
  get "/restaurants", to: "restaurants#index"
  # Create
  get "/restaurants/new", to: "restaurants#new"
  post "/restaurants", to: "restaurants#create"
  # Read one
  get "/restaurants/:id", to: "restaurants#show", as: :restaurant

  # Read all - Nested
  get "/restaurants/:restaurant_id/reviews", to: "reviews#index", as: :reviews

  # Create - Nested
  get "/restaurants/:restaurant_id/reviews/new", to: "reviews#new", as: :review_new
  post "/restaurants/:restaurant_id/reviews", to: "reviews#create", as: :restaurant_reviews
end
