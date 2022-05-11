class TrackingNumber < ApplicationRecord
  belongs_to :order

  validates :order_id, pressence: true
end
