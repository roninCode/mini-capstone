class Category < ApplicationRecord
  has_many :categorized_books
  has_many :books, through: :categorized_books
end
