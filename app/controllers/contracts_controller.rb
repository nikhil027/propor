class ContractsController < ApplicationController
	before_action :authenticate_user!
	load_and_authorize_resource

	def index
		if current_user.roles.pluck(:name).include?("admin")
			@contracts = Contract.all
		elsif current_user.roles.pluck(:name).include?("owner")
			@contracts = Contract.where('user_id = ?',current_user.id)
		elsif current_user.roles.pluck(:name).include?("tenant")
			@contracts = Contract.where('tenant_id = ?',current_user.id)
		end
	end

	def new 
		@contract = Contract.new
	end

	def create
		@contract = Contract.new(contract_params)
		@contract.user_id = current_user.id
		if @contract.save
			redirect_to contracts_path, notice: "Contract Created"
		else
			render action: "new"
		end
	end

	def edit
		@contract = Contract.find(params[:id])
	end

	def update 
		@contract = Contract.find(params[:id])
		if @contract.update_attributes(contract_params)
			redirect_to contracts_path, notice:"Edited Contract"
		else
			render action: "edit"
		end
	end

	def show
		@contract = Contract.find(params[:id])
	end

	def destroy
		@contract = Contract.find(params[:id])
		@contract.delete
		redirect_to contracts_path, notice:"Contract Terminated"
	end

	private

	def contract_params
		params[:contract].permit(:property_id,:user_id,:tenant_id,:start_date,:end_date)
	end
end
