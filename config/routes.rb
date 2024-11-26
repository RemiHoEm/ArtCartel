Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  # Health check route
  get "up" => "rails/health#show", as: :rails_health_check

  # Challenges routes
  resources :challenges, only: [:new, :create, :show]

  # Categories routes for filtering by theme
  resources :categories, only: [] do
    collection do
      get :filter_by_theme # Route for filtering categories by theme
    end
  end
end
