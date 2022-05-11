Rails.application.routes.draw do
  resources :order_states
  resources :tracking_numbers
  resources :deliveries
  resources :addresses
  resources :billings
  resources :invoices
  resources :orders
  resources :products


  namespace :api do
    namespace :v1 do
      resources :orders
      resources :products
    end
  end
end
