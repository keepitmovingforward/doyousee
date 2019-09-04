Rails.application.routes.draw do
  resources :performances
  resources :performance_tricks
  resources :tricks
  resources :magicians
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
