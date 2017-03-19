class ChangePriceToDecimal < ActiveRecord::Migration[5.0]
  def change
    change_column :books, :price, :decimal, precision: 9, scale: 2
  end
end
