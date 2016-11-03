class CustomerConfirmationMailer < ApplicationMailer
	default from: "mandiwalsunil91@gmail.com"

	def customer_confirmation(customer)
		@customer = customer

		mail(to: @customer.email, subject: 'Confirmation mail for using newecommerce app')
	end
end
