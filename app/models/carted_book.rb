class CartedBook < ApplicationRecord
  belongs_to :user
  belongs_to :book
  belongs_to :order, optional: true

validates :quantity, numericality: true

end
