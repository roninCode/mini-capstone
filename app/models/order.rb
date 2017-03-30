class Order < ApplicationRecord
  belongs_to :user
  has_many :carted_books

  validates :tax, numericality: true
  validates :subtotal, numericality: true
  validates :total, numericality: true
end
