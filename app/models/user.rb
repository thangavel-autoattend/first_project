class User < ActiveRecord::Base
	has_many :orders
	after_destroy :remove_orders
	def remove_orders
		self.orders.destroy_all
	end
end
