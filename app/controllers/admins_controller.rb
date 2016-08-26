class AdminsController < ApplicationController

  def index
		
	@admin = Admin.all	
 end
 def show 
	@admin= Admin.find(params[:id])

end
  
 end