class AddCodeToOrderStates < ActiveRecord::Migration[7.0]
  def change
    add_column :order_states, :code, :string
  end
end
