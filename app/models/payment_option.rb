class PaymentOption < ActiveRecord::Base
	has_many :payments
end
