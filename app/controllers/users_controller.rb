class UsersController < ApplicationController
	before_action :authenticate_user!
	load_and_authorize_resource

	def index
		@users = User.where('created_by = ?',current_user.id)
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		#if current_user.roles.find_by_name("admin") 
			@user.created_by = current_user.id
		#end
		if @user.save
			user = @user
			#Notification.send_login_credentials(user).deliver 
			redirect_to users_path, notice: "User Succesfully Created and Login Credentials sent"
		else
			render action: "new"
		end
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update_attributes(user_params)
			redirect_to users_path, notice: "User Details Succesfully Edited"
		else
			render action:"edit"
		end
	end	

	def destroy
		@user = User.find(params[:id])
		@user.delete
		redirect_to users_path
	end

private

	def user_params
		params[:user].permit(:email,:password, :created_by, role_ids:[])
	end

end
