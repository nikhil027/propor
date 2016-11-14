class Property < ActiveRecord::Base

	belongs_to :userdetail
	has_many :tasks
end
