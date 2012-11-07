class Product < ActiveRecord::Base
  attr_accessible :description, :image_url, :price, :quantity, :title
  validates :description, :image_url, :price, :quantity, :title, presence: true
  validates :price, :quantity, numericality: {greater_than_or_equal_to: 0}
  validates :image_url, allow_blank: true, format: {
  	with:    %r{\.(gif|jpg|png)$}i,
  	message: 'must be a URL for GIF, JPG or PNG image.'
  }
end
