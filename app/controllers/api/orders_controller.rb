class Api::OrdersController < ApplicationController

  # before_action :authenticate_user, except: [:index]

  def index
    @orders = current_user.orders
    render "index.json.jb"
  end

  def create
    product = Product.find_by(id: params[:product_id])

    subtotal = product.price * params[:quantity].to_i
    tax = subtotal * 0.09
    total = subtotal + tax

    @order = Order.new(
    user_id: current_user.id,
    product_id: params[:product_id],
    quantity: params[:quantity],
    subtotal: subtotal,
    tax: tax,
    total: total 
    )
  
    if @order.save
      render "show.json.jb"
    else 
      render json: {errors: @order.errors.full_messages}, status: 422
    end
  end

  def show
    @order = Order.find_by(id: params[:id])
    render "show.json.jb"
  end
end