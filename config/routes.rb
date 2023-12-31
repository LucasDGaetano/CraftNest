Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :ateliers do
    resources :reservations, only: [:new, :create]
  end
  resources :reservations, only: [:show, :destroy] do
    resources :reviews, only: [:create]
  end
  resources :reviews, only: [:destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get "/dashboard", to: "pages#dashboard", as: :user_profile

  # Defines the root path route ("/")
  # root "posts#index"
end
