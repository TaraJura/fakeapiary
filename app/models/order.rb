class Order < ApplicationRecord
  has_many :tracking_numbers, dependent: :destroy
  has_many :order_states, dependent: :destroy
end
