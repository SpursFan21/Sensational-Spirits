Rails.application.routes.draw do
  get 'home/index'

  # Route for search functionality
  get '/search', to: 'search#search', as: 'search'

  # Health check route
  get "up" => "rails/health#show", as: :rails_health_check

  # Root route
  root 'home#index'
end
