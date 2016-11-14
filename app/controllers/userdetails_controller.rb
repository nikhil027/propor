class UserdetailsController < ApplicationController
	before_action :authenticate_user!
	
	def index
		@userdetails = Userdetail.all.where('user_id = ?',current_user.id) 
	end

	def new
		@userdetail = Userdetail.new
	end

	def create
		@userdetail = Userdetail.new(userdetail_params)
		if @userdetail.save
			redirect_to userdetails_path
		end
	end

	def edit
		@userdetail = Userdetail.find(params[:id])
	end

	def update
		@userdetail = Userdetail.find(params[:id])
		@userdetail.update_attributes(userdetail_params)
		if @userdetail.save 
			redirect_to userdetails_path
		else
			render action: "new"
		end
	end

	private

	def userdetail_params
		params[:userdetail].permit(:name,:email,:mobile,:role,:pan_no,:user_id,:date_of_birth)
	end

end
