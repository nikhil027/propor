class PropertiesController < ApplicationController
	before_action :authenticate_user!

	def index
		@properties = Property.all.where('owner_id = ?',current_user.id) 
	end

	def show
		@property = Property.find(params[:id])
	end

	def new
		@property = Property.new
	end

	def create
		@property = Property.new(property_params)
		 if @property.save
		 	redirect_to properties_path, notice: "Property Successfully Added"
		 else
		 	render action: "new"
		 end
	end

	def edit
		@property = Property.find(params[:id])
	end

	def update
		@property = Property.find(params[:id])
		if @property.update_attributes(property_params)
			redirect_to properties_path
		else
			render action: "edit"
		end
	end

	def destroy
		@property = Property.find(params[:id])
		@property.delete
		redirect_to properties_path
	end
	


private
	def property_params
		params[:property].permit(:name,:property_type,:built_up_area,:owner_id,:is_available,:property_reserve,:description,:country_id,:state_id,:city_id,:address,:water_bill_details,:electricity_bill_details)
	end

end
