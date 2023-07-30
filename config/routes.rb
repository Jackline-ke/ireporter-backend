Rails.application.routes.draw do
  # Routes for Flags
  resources :flags, only: [:index, :show]

  # Routes for Locations
  resources :locations, only: [:index, :show]

  # Routes for Categories
  resources :categories, only: [:index, :show]
  resources :users
  resources :posts, only: [:index, :show, :new, :create, :edit, :update, :destroy]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :categories, only: [:index, :show]
  # Defines the root path route ("/")
  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  post "/login", to: "sessions#create"
  post "/register", to: "sessions#authenticate"
  delete "/logout", to: "sessions#destroy"
  patch '/reset_password', to: 'users#reset_password'
  # root "articles#index"
end


