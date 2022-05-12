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

  root to: "orders#index"

  namespace :api do
    get '/order', to: 'orders#index', defaults: { format: :json }
    get '/order/:id', to: 'orders#show', defaults: { format: :json }
    get '/product', to: 'products#index', defaults: { format: :json }
    get '/product/:id', to: 'products#show', defaults: { format: :json }
  end
end
