Rails.application.routes.draw do
  devise_for :users, defaults: { format: :json }
  resources :rentals
  resources :sales
  resources :manufacturers
  resources :cars
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
