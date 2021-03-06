class Userdetail < ActiveRecord::Base
	
	mount_uploader :profile_picture, PropertyPicturesUploader
	mount_uploader :id_proof, IdProofUploader
	has_many :properties
	belongs_to :user
	validates_presence_of :name, :mobile, :user_id, :pan_no
	validates_numericality_of :mobile
	#validates_length_of :mobile,is: :10
	validates_uniqueness_of :pan_no 

end
