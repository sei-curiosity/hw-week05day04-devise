Rails.application.routes.draw do
  resources :cars
  devise_for :users ## return all path that I have localhost:3000/rails/info/routes
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
