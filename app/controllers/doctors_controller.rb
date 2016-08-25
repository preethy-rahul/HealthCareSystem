class DoctorsController < ApplicationController
	def index
		
		@doctor = Doctor.all
		 #@doctor = Doctor.find(params[:id])
end
def show 
	@doctor=Doctor.find(params[:id])

	end

    
 end