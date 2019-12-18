Rails.application.routes.draw do
  resources :cars
  devise_for :users
  get 'home/index', to: "home#index", as: 'welcome'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  

  root to: "home#index"

end
