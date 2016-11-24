class Contract < ActiveRecord::Base
	belongs_to :user
	belongs_to :tenant, class_name: 'User'
end
