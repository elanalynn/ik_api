class OrdersController < ApplicationController

  def create
    @order = Order.new(order_params)

    if @order.save
      json_response(@order, :created)
    else
      json_response(@order.errors, :unprocessable_entity)
    end
  end

  private

  def order_params
    params.require(:order).permit(:email, :address_1, :address_2, :city, :state, :zip, :instructions)
  end

  def json_response(object, status = :ok)
    render json: object, status: status
  end
end
