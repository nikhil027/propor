class DashboardController < ApplicationController
	
	before_action :authenticate_user!
	#load_and_authorize_resource
  
  def index
  	@tasks = Task.all
  	@properties = Property.all
  end

end
