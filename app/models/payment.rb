class Payment < ActiveRecord::Base
	belongs_to :owner, class_name: 'User'
	belongs_to :tenant, class_name: 'User'
	has_many :payment_descriptions, foreign_key: "payment_description"
	has_many :payment_options,foreign_key: "payment_options"
	belongs_to :contract
end
