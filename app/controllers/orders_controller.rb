class OrdersController < ApplicationController

  def create
    @order = Order.new(
    user_id: current_user.id,
    book_id: params['book_id'],
    quantity: params['quantity'],
    subtotal: params['subtotal'],
    tax: params['tax'],
    total: params['total']
    )
    @order.save

    render 'show.html.erb'
  end

end
