class AddOrderIdToOrderStates < ActiveRecord::Migration[7.0]
  def change
    add_reference :order_states, :order, null: false, foreign_key: true
  end
end
