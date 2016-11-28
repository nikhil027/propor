class Payment < ActiveRecord::Base
	belongs_to :owner, class_name: 'User'
	belongs_to :tenant, class_name: 'User'
	has_many :payment_descriptions
	has_many :payment_options
end
