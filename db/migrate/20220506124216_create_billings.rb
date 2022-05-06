class CreateBillings < ActiveRecord::Migration[7.0]
  def change
    create_table :billings do |t|
      t.string :code
      t.string :name
      t.boolean :cod

      t.timestamps
    end
  end
end
