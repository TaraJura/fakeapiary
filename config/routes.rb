Rails.application.routes.draw do
  resources :order_states
  resources :tracking_numbers
  resources :deliveries
  resources :addresses
  resources :billings
  resources :invoices
  resources :orders do
    post 'set_state', on: :member
  end
  resources :products

  root to: "home#index"

  namespace :api do
    post '/order', to: 'orders#create', defaults: { format: :json }
    put '/order/:id', to: 'orders#update', defaults: { format: :json }
    get '/order', as: 'orders', to: 'orders#index', defaults: { format: :json }
    get '/order/:id', to: 'orders#show', defaults: { format: :json }
    delete '/order/:id', to: 'orders#destroy', defaults: { format: :json }
    get '/product', to: 'products#index', defaults: { format: :json }
    get '/product/:id', to: 'products#show', defaults: { format: :json }
    post '/product/:id', to: 'products#create', defaults: { format: :json }
  end
end
