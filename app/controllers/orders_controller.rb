class OrdersController < ApplicationController

def index

	@order = Order.all

end

def new
	@oredr = Order.new

end

def create
@oredr = Order.new(order_params)

   if @order.save
   auto_login(@order)
redirect_to orders_path(current_order), :notice => "Your Order Successfully created"

else

	render 'new'
end

end

private
 def order_params

 	params.require(:order).permit(:id, :customer_id, :item_id, :name)
 end




end

