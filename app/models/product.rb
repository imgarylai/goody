class Product < ActiveRecord::Base
  attr_accessible :description, :image_url, :price, :quantity, :title
end
