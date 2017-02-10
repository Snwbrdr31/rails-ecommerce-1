Rails.application.routes.draw do

  root 'products#index'

  resources :products
  # TODO: fix routes
  # get 'products', 'products#index', as: 'products'
  # get 'products/:id', 'products#show', as: 'product'
  #
  # post 'products', 'products#create', as: 'product'
  #
  # put 'products/:id', 'products#update', as: 'product'
  #
  # delete 'products/:id', 'products#destroy', as: 'product'

end
