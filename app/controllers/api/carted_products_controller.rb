class Api::CartedProductsController < ApplicationController

  before_action :authenticate_user

  def index
    @orders = current_user.orders
    # @carted_products = current_user.carted_products.where(status: "carted")

    render "index.json.jb"
  end

  def show
    @order = Order.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    carted_products = current_user.carted_products.where(status: "carted")

    calculated_subtotal = 0
    carted_products.each do |carted_product|
      calculated_subtotal += carted_product.product.price * carted_product.quantity
      
    end

    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax

    @order = Order.new(
      user_id: current_user.id,
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total

      )
      if @order.save
        carted_products.update_all(status: "purchased", order_id: @order.id)
        render "show.json.jb"
      else 
        render json: {error: @order.errors.full_message}, status: :unprocessable_entity



    @carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted" 
      )
    if @carted_product.save
      render "show.json.jb"
    else 
      render json: {error: @carted_product.errors.full_message}, status: :unprocessable_entity
    end
  end

  def destory
    @carted_product = CartedProduct.find_by(id: params[:id])
    @carted_product.update(status: "removed")
    render json: {message: "removed#{@carted_product.product.name}"}
    
  end

end
