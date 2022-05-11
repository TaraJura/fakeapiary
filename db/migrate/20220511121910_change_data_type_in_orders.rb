class ChangeDataTypeInOrders < ActiveRecord::Migration[7.0]
  def change
    change_column :orders, :pdf_docs, :longtext
  end
end
