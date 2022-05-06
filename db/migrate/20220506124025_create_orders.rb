class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :order_number
      t.string :order_number_web
      t.string :note
      t.boolean :pdf_docs
      t.string :total
      t.string :currency
      t.integer :business_unit_id

      t.timestamps
    end
  end
end
