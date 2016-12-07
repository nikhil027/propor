class PaymentDescription < ActiveRecord::Base
	has_many :payments

	def display_info
		self.payment_type + "--- "+" " + self.payment_description 
	end
end
