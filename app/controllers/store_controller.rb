class StoreController < ApplicationController
  def index
    @counter = increment_hits
    @products = Product.all
  end

end
