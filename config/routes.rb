Rails.application.routes.draw do
  resources :products
  resources :categories
  post 'authenticate', to: 'authentication#authenticate'
  resources :carts, only: [:create]
  get 'cart', to: 'carts#cart'
end
