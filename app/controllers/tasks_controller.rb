class TasksController < ApplicationController

	before_action :authenticate_user!
	load_and_authorize_resource

	def index
		@tasks = Task.all.where('user_id = ?',current_user.id)
	end

	def show
		@task = Task.find(params[:id])
	end

	def new
		@task = Task.new
	end

	def create
		@task = Task.new(task_params)
		if @task.save
			redirect_to tasks_path
		else
			render action: "new"			
		end
	end

	def edit
		@task = Task.find(params[:id])
	end

	def update
		@task = Task.find(params[:id])
		if @task.update_attributes(task_params)
			redirect_to tasks_path
		else
			render action:"edit"
		end
	end

	def destroy
		@task = Task.find(params[:id])
		@task.delete
		redirect_to tasks_path
	end
private
	def task_params
		params[:task].permit(:title,:description,:task_type,:category,:property_id,:user_id,:due_date,:status,:priority)
	end
end
