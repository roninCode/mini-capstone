class ChangeProductIdToBookId < ActiveRecord::Migration[5.0]
  def change
    remove_column :carted_books, :product_id, :integer
    add_column :carted_books, :book_id, :integer
  end
end
