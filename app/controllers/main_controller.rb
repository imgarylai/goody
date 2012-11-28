class MainController < ApplicationController

	def index
		@products = Product.all
		@products_image = Product.limit(4).reverse
	end

end
