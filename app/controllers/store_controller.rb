class StoreController < ApplicationController
  def index
    @counter = increment_hits
    @products = Product.all
    @cart = current_cart
  end

end
