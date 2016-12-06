class PaymentDescription < ActiveRecord::Base
	belongs_to :payment, class: 'Payment'

	def display_info
		self.payment_type + "--- "+" " + self.payment_description 
	end
end
