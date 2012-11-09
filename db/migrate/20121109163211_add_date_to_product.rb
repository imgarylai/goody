class AddDateToProduct < ActiveRecord::Migration
  def change
  	add_column :products, :date, :datetime
  end
end
