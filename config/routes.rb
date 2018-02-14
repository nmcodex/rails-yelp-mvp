Rails.application.routes.draw do

  # resources :restaurants, only: [:index, :new, :create, :show] do
  #   resources :reviews, only: [:index, :new, :create ]
  # end

  resources :restaurants, only: [:index, :new, :create, :show]
  post "restaurants/:restaurant_id/reviews", to: "reviews#create", as: 'restaurant_reviews'
end
