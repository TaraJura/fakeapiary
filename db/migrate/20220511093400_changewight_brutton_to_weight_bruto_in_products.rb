class ChangewightBruttonToWeightBrutoInProducts < ActiveRecord::Migration[7.0]
  def change
    rename_column :products, :wight_brutto, :weight_brutto
  end
end
