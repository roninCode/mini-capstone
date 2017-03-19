class Book < ApplicationRecord
  def sale_message
    if price.nil? || price < 2
      "Discount Item!"
    else 
      "Everyday Value"
    end
  end


  def tax
    price.to_f * 0.09
  end

  def total
    tax = price.to_f * 0.09
    total = price.to_f + tax
    total
  end
end