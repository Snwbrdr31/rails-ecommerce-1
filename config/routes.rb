Rails.application.routes.draw do


  root 'products#index'

  resources :products

  # # TODO: fix routes
  # get 'products', to: 'products#index', as: 'products'
  # get 'products/:id', to: 'products#show', as: 'product'
  #
  # post 'products', to: 'products#create', as: 'product'
  #
  # put 'products/:id', to: 'products#update', as: 'product'
  #
  # delete 'products/:id', to: 'products#destroy', as: 'product'

  get 'carts/show', to: 'carts#show', as: 'cart'

end
