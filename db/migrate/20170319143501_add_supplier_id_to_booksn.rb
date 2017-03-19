class AddSupplierIdToBooksn < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :supplier_id, :integer
  end
end
