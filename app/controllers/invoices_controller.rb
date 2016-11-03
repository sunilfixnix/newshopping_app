class InvoicesController < ApplicationController
	def index

		@invoice = Invoice.all
	end


	def new
		@invoice = Invoice.new

	end

	def create

		@invoice = Invoice.new(invoice_params)

		if @invoice.save

			redirect_to invoices_path

		else

			render 'new'

		end

	end

	def edit

		@invoice = Invoice.find(params[:id])

	end

	def update
		@invoice = Invoice.find(params[:id])

		if @invoice.update(invoice_params)

			redirect_to invoices_path

		else

			render 'edit'
		end

	end

	private

	def invoice_params

		params.require(:invoice).permit(:id, :custABN, :created, :customer_id)

	end
end

