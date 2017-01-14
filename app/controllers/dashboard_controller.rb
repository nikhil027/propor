class DashboardController < ApplicationController
	
	before_action :authenticate_user!
	#load_and_authorize_resource
  
  def index
  	@tasks = Task.all
  	@properties = Property.all
  	if current_user.roles.pluck(:name).include?("admin")
			@contracts = Contract.all
		elsif current_user.roles.pluck(:name).include?("owner")
			@contracts = Contract.where('user_id = ?',current_user.id)
		elsif current_user.roles.pluck(:name).include?("tenant")
			@contracts = Contract.where('tenant_id = ?',current_user.id)
		end
  end

end
