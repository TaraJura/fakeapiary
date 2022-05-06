class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :code
      t.string :name
      t.string :short_name
      t.string :barcode
      t.string :unit
      t.integer :wight_brutto
      t.integer :weight_netto
      t.integer :volume
      t.integer :width
      t.integer :height
      t.integer :depth
      t.integer :units_in_box
      t.integer :boxes_on_pallete

      t.timestamps
    end
  end
end
