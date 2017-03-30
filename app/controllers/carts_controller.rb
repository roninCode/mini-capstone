class CartsController < ApplicationController
before_action :authenticate_user! 
  def index
    @books = Book.all
    render 'index.html.erb'
  end

  def create    
    @carted_book = CartedBook.new(
    user_id: current_user.id,
    book_id: params['book_id'],
    order_id: "carted",
    quantity: params['quantity'],
    )
    @carted_book.save
    redirect_to '/carts'
  end
end
