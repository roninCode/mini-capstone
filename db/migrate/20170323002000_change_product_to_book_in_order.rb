class ChangeProductToBookInOrder < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :product_id, :integer
    add_column :orders, :book_id, :integer
  end
end
