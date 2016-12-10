Rails.application.routes.draw do

  resources :ratings
  get 'home/index'
  root 'home#index'

  resources :date_ranges
  resources :users
  resources :food_items
  resources :eateries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
