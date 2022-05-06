class CreateOrderStates < ActiveRecord::Migration[7.0]
  def change
    create_table :order_states do |t|
      t.string :name
      t.date :date_created
      t.string :note

      t.timestamps
    end
  end
end
