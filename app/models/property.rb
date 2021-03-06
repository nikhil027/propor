class Property < ActiveRecord::Base

	mount_uploaders :property_documents, PropertyDocumentsUploader
	mount_uploaders :property_pictures, PropertyPicturesUploader
	belongs_to :userdetail
	belongs_to :owner, class_name: 'User'
	has_many :tasks
	has_many :contracts

	validates_presence_of :name,:property_type,:built_up_area,:owner_id,:is_available,:property_reserve,:description,:country_id,:state_id,:city_id,:address,:water_bill_details,:electricity_bill_details
	
end
