class Api::ProductsController < ApplicationController

  def index
    @products = Product.all
    # @message = "sanity check"
    render "index.json.jb"
  end

  def show
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
     # = params[0]
    # @message = "sanity check"
    render "show.json.jb"
  end

  def create
    @product = Product.new(
      id: params[:id],
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description]
      )

    @product.save
    render "create.json.jb"
  end

  def update
    @product = Product.find_by(id: params[:id])

    @product.name = params[:name] || @product.name
    @product.price = params[:price].to_i || @product.price
    @product.image_url = params[:image_url] || @product.image_url
    @product.description = params[:description] || @product.description

    @product.save
    render "show.json.jb"
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: {message: "gone."}
  end

end
  