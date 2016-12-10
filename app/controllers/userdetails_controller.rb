class UserdetailsController < ApplicationController
	before_action :authenticate_user!
	load_and_authorize_resource
	
	def index
		@userdetail = Userdetail.find_by_user_id(current_user.id) #.where('user_id = ?',current_user.id) 
	end

	def new
		@userdetail = Userdetail.new
	end

	def show
		@userdetail = Userdetail.find(params[:id])
	end

	def create
		@userdetail = Userdetail.new(userdetail_params)
		@userdetail.user_id = current_user.id
		if @userdetail.save
			redirect_to userdetail_path(@userdetail.id)
		else
			render action: "new"
		end
	end

	def edit
		@userdetail = Userdetail.find(params[:id])
	end

	def update
		@userdetail = Userdetail.find(params[:id])	
		if @userdetail.update_attributes(userdetail_params)
			redirect_to userdetail_path(@userdetail.id)
		else
			render action: "edit"
		end
	end

	private

	def userdetail_params
		params[:userdetail].permit(:name,:email,:mobile,:pan_no,:user_id,:date_of_birth,:profile_picture,:id_proof)
	end

end
