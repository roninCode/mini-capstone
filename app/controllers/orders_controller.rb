class OrdersController < ApplicationController

  def create
    @book = Book.find_by(id: params['book_id'])
    @order = Order.new(
    user_id: current_user.id,
    book_id: params['book_id'],
    tax: 0.07,
    quantity: params['quantity'],
    subtotal: params['quantity'].to_f * @book.price,
    total: params['total']
    )
    @order.total = (@order.tax * @order.subtotal) + @order.subtotal
    @order.save

    render 'show.html.erb'
  end

end
