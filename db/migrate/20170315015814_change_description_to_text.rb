class ChangeDescriptionToText < ActiveRecord::Migration[5.0]
  def change
    change_column :books, :description, :text
  end
end
