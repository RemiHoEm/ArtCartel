Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  # Health check route
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :games, only: [:create]
  resources :games_artworks, only: [] do
    resources :challenges, only: [:new, :create] do
      post 'compare', on: :collection
    end
  end
  resources :users_games, only: :show


  # Categories routes for filtering by theme
  resources :categories, only: [] do
    collection do
      get :filter_by_theme # Route for filtering categories by theme
    end
  end

end
