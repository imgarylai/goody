class MainController < ApplicationController

	def index
		@products = Product.all
		@images = Photo.all
	end

end
