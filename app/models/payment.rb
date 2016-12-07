class Payment < ActiveRecord::Base
	belongs_to :owner, class_name: 'User'
	belongs_to :tenant, class_name: 'User'
	belongs_to :payment_description
	belongs_to :payment_option
	belongs_to :contract
end
