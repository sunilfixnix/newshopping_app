class Customer < ApplicationRecord
	has_many :orders
	has_many :invoices
end
