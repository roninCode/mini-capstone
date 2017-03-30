class CartsController < ApplicationController
  def index
    if current_user 
        @books = Book.all
        render 'index.html.erb'
    else
      redirect_to "/books"
    end
  end

  def create
    if current_user    
      @carted_book = CartedBook.new(
      user_id: current_user.id,
      book_id: params['book_id'],
      order_id: "carted",
      quantity: params['quantity'],
      )
      @carted_book.save
      redirect_to '/carts'
    else
      redirect_to "/books"
    end
  end
end
