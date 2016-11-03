class PaymodesController < ApplicationController
	def index
		@paymode = Paymode.all
	end

	def new

		@paymode = Paymode.new

	end

	def create

		@paymode = Paymode.new(paymode_params)

		if @paymode.save

			redirect_to paymodes_path

		else
			render 'new'
		end

	end

	private

	def paymode_params

		params.require(:paymode).permit(:id, :name, :card_holder_name, :cardnumber, :validity, :CCV, :order_id)

	end

end
