class OrdersController < ApplicationController
before_action :authenticate_user!
    def show
        @order = Order.find_by(id: params['order_id'])
    end

    def create
        @order = Order.new(
        user_id: current_user.id,
        tax: 0.07,
        subtotal: 0,
        total: 0
        )
        @order.save
        render 'show.html.erb'
        # Eventually redirect_to '/orders/#{@order.id}'
    end
end

