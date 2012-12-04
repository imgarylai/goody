class Order < ActiveRecord::Base
  attr_accessible :name, :time_type

  has_many :line_items, dependent: :destroy
  has_many :product ,:through => :line_items, :dependent => :destroy

  TIME_TYPES = [ "A", "B" ]

  validates :name, :time_type, presence: true
  validates :time_type, inclusion: TIME_TYPES

	def add_line_items_from_cart(cart)
		cart.line_items.each do |item|
			item.cart_id = nil
			line_items << item
		end
	end

end
