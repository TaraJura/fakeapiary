class CreateTrackingNumbers < ActiveRecord::Migration[7.0]
  def change
    create_table :tracking_numbers do |t|
      t.string :carrier
      t.string :tracking_number

      t.timestamps
    end
  end
end
