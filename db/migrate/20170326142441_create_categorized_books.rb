class CreateCategorizedBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :categorized_books do |t|
      t.integer :category_id
      t.integer :book_id

      t.timestamps
    end
  end
end
