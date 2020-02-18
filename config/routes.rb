Rails.application.routes.draw do
  resources :products
  resources :categories
  post 'authenticate', to: 'authentication#authenticate'
  post 'add_product_to_cart', to: 'carts#add_product_to_cart'
  get 'cart', to: 'carts#cart'
end
