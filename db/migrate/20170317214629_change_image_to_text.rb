class ChangeImageToText < ActiveRecord::Migration[5.0]
  def change
    change_column :books, :image, :text
  end
end
