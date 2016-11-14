class UserdetailsController < ApplicationController
	before_action :authenticate_user!
	
	def index
		@userdetails = Userdetail.all 
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

	private

	def userdetail_params
		params[:userdetail].permit(:name,:email,:mobile,:role,:pan_no,:user_id,:date_of_birth)
	end

end
