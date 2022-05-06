class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :name
      t.string :company
      t.string :street
      t.string :city
      t.string :zip
      t.string :country
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
