class Order < ApplicationRecord
  belongs_to :user
  belongs_to :book
  has_many :carted_books
end
