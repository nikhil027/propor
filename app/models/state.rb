class State < ActiveRecord::Base
	belongs_to :country
	has_many :cities

	validates_presence_of :name
end
