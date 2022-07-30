class HomeController < ApplicationController

  def index
    # @products = Product.all
    @products = Product.available_stock
  end
end
