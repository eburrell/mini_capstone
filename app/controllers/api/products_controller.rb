class Api::ProductsController < ApplicationController

  def product_all
    @products = Product.all
    # @message = "sanity check"
    render "product_all.json.jb"
  end

  def product_individual
    @product = Product.all[0]   
    # @message = "sanity check"
    render "product_individual.json.jb"
  end
end
