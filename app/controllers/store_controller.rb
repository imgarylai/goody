class StoreController < ApplicationController
  
  def index
  	@products = Product.all.reverse
  	@cart = current_cart
  end

end