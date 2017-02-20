Rails.application.routes.draw do
  root 'products#index'


  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks'}

  resources :products
  # resources :signups
  resources :users, only: :create
  resources :newsletter, only: [:new, :create]

  post 'signup/create', to: 'signup#create', as: 'signup'

  # # TODO: fix routes
  # get 'products', to: 'products#index', as: 'products'
  # get 'products/:id', to: 'products#show', as: 'product'
  #
  # post 'products', to: 'products#create', as: 'product'
  #
  # put 'products/:id', to: 'products#update', as: 'product'
  #
  # delete 'products/:id', to: 'products#destroy', as: 'product'

  get 'carts/show/:id', to: 'carts#show', as: 'cart'
  post 'carts/show/:id/:product_id', to: 'carts#update', as:'add_to_cart'
  delete 'carts/show/:id/:purchase_id', to: 'carts#destroy', as: 'remove_from_cart'

end
