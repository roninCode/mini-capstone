class CartedBook < ApplicationRecord
  belongs_to :user
  belongs_to :book
  belongs_to :order
end
