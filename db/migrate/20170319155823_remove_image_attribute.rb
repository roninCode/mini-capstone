class RemoveImageAttribute < ActiveRecord::Migration[5.0]
  def change
    remove_column :books, :image, :text
  end
end
