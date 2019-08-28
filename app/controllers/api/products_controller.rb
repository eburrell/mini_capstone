class Api::ProductsController < ApplicationController

  def product_all
    @products = Product.all
    # @message = "sanity check"
    render "product_all.json.jb"
  end

  def product_individual
    @product = Product.all[1]   
    # @message = "sanity check"
    render "product_individual.json.jb"
  end
end
