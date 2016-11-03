class BillsController < ApplicationController
	def index

		@bill = Bill.all
	end


	def new
		@bill = Bill.new

	end

	def create

		@bill = Bill.new(bill_params)

		if @bill.save

			redirect_to bills_path

		else

			render 'new'

		end

	end

	def edit

		@bill = Bill.find(params[:id])

	end

	def update
		@bill = Bill.find(params[:id])

		if @bill.update(bill_params)

			redirect_to bills_path

		else

			render 'edit'
		end

	end

	private

	def bill_params

		params.require(:bill).permit(:id, :linenumber, :quantity, :invoice_id)

	end
end
