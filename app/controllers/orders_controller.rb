class OrdersController < ApplicationController
	before_action :authenticate_buyer!
	
	def index
		@orders = Order.where(buyer_id: current_buyer.id).reverse
	end
end