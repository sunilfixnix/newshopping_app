class CustomersController < ApplicationController
	def index

		@customer = Customer.all
	end

	def show

		@customer = Customer.find(params[:id])

	end


	def new
		@customer = Customer.new

	end

	def create

		@customer = Customer.new(customer_params)

		if @customer.save
			CustomerConfirmationMailer.customer_confirmation(@customer).deliver

			redirect_to customers_path

		else

			render 'new'

		end

	end

	def edit

		@customer = Customer.find(params[:id])

	end

	def update
		@customer = Customer.find(params[:id])

		if @customer.update(customer_params)

			redirect_to customers_path

		else

			render 'edit'
		end

	end

	private

	def customer_params

		params.require(:customer).permit(:id, :custABN, :first_name, :last_name, :email, :address, :phone, :pincode, :password, :confirmation)

	end
end
