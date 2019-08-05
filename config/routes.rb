Rails.application.routes.draw do
  resources :rentals
  resources :sales
  resources :manufacturers
  resources :cars
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
