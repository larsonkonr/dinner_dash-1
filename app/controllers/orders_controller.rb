class OrdersController < ApplicationController
  def index
    user = User.find(params[:user_id])
    authorize! :read, user
    @orders = user.orders
  end

  def show
    @order = Order.find(params[:id])
    authorize! :read, @order
  end
end