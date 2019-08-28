class Api::ProductsController < ApplicationController

  def product_all
    @products = Product.all
    # @message = "sanity check"
    render "product_all.json.jb"
  end
end
