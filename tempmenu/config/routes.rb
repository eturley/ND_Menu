Rails.application.routes.draw do
  resources :users
  resources :menus
  resources :food_items
  resources :eateries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
