Rails.application.routes.draw do

  get 'search/index'

  get 'protected_controller/require_user'

  post 'auth/login' => 'auth#login', as: :login
  get 'auth/logout' => 'auth#logout', as: :logout

  get 'home/index' => 'home#index', as: :home
  get 'signup'     => 'home#signup', as: :signup
  post 'home/signup' => 'home#save_user', as: :new_user
  root 'home#index'

  get 'search/(:keyword)' => 'search#index', as: :search

  resources :ratings
  resources :date_ranges
  resources :users
  resources :food_items
  resources :eateries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
