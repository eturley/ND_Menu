Rails.application.routes.draw do

  post 'auth/login' => 'auth#login', as: :login
  get 'auth/logout' => 'auth#logout', as: :logout

  get 'home/index' => 'home#index', as: :home
  root 'home#index'

  resources :ratings
  resources :date_ranges
  resources :users
  resources :food_items
  resources :eateries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
