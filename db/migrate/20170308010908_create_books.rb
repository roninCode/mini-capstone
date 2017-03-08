class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :price
      t.string :image
      t.string :description
      t.integer :copyright_year

      t.timestamps
    end
  end
end
