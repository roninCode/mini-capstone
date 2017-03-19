class AddAttributesToSuppliers < ActiveRecord::Migration[5.0]
  def change
    add_column :suppliers, :name, :string
    add_column :suppliers, :email, :string
    add_column :suppliers, :phone, :string
  end
end
