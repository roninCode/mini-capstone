class AddImageIdToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :images, :book_id, :integer
  end
end
