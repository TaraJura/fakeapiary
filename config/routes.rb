Rails.application.routes.draw do
  resources :order_states
  resources :tracking_numbers
  resources :deliveries
  resources :addresses
  resources :billings
  resources :invoices
  resources :orders do
    post 'packaging', on: :member
    post 'transport', on: :member
  end
  resources :products

  root to: "orders#index"

  namespace :api do
    resources :products, defaults: { format: :json }
    resources :orders, defaults: { format: :json } do
      post 'packaging', on: :member
      post 'transport', on: :member
    end
  end
end
