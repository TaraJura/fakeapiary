class AddStateIdToOrder < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :state_id, :integer
    add_column :orders, :state_name, :string
  end
end
