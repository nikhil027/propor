class PaymentDescription < ActiveRecord::Base
	belongs_to :payment

	def display_info
		self.payment_type + "--- "+" " + self.payment_description 
	end
end
