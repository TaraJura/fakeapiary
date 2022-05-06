class Order < ApplicationRecord
  has_many :trackingNumbers, dependent: :destroy
end
