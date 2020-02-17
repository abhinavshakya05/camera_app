Rails.application.routes.draw do
  resources :products
  resources :categories
  post 'authenticate', to: 'authentication#authenticate'
end
