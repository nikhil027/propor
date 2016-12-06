class Contract < ActiveRecord::Base
	belongs_to :user
	belongs_to :tenant, class_name: 'User'
	belongs_to :property
	has_many :payments
end
