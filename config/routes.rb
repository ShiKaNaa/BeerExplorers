Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :beers, only: [:index, :show]
  resources :beerquests, only: [:index, :new, :create, :destroy, :update]
  get "/profile", to: "dashboards#profile", as: :profile
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
