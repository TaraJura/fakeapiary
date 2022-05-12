class AddRederenceToTrackingNumbers < ActiveRecord::Migration[7.0]
  def change
    add_reference :tracking_numbers, :order, null: false, foreign_key: true
  end
end
