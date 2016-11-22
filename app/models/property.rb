class Property < ActiveRecord::Base

	
	belongs_to :userdetail
	has_many :tasks

	validates_presence_of :name,:property_type,:built_up_area,:owner_id,:is_available,:property_reserve,:description,:country_id,:state_id,:city_id,:address,:water_bill_details,:electricity_bill_details
	
end
