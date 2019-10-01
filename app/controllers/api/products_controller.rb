class Api::ProductsController < ApplicationController

  # before_action :authenticate_admin, except: [:index, :show]
  
  def index
    
    @products = Product.all
    
    if params[:search]
      @products = @products.where("name iLike ?", "%#{params[:search]}%")
    end

    if params[:discount]
      @products = @products.where("price < ?", 10)
    end

    if params[:category]
      category = Category.find_by("name iLike?", params[:category])
      @products = category.products
      
    end

    if params[:sort] == "price" && params[:sort_order] == "asc"
      @products = @products.order(:price)
    elsif params[:sort] == "price" && params[:sort_order] == "desc"
      @products = @products.order(price: :desc)
    else
      @products = @products.order(:id)
    end
    
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
      description: params[:description]
      )

    if @product.save
      render "show.json.jb"
    else 
      render json: {errors: @product.errors.full_messages}, status: 422
    end
  end

  def update
    @product = Product.find_by(id: params[:id])

    @product.name = params[:name] || @product.name
    @product.price = params[:price].to_i || @product.price
    @product.description = params[:description] || @product.description

    if @product.save
      render "show.json.jb"
    else  
      render json: {errors: @product.errors.full_messages}, status: 422
    end
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: {message: "gone."}
  end

end
  