class DoctorsController < ApplicationController
	def index
		
		@doctors = Doctor.all
		 #@doctor = Doctor.find(params[:id])
end


def show 
	@doctor=Doctor.find(params[:id])

	end
 def create
    # Create the user from params
    @doctor= Doctor.new(params[:doctor])
    if @doctor.save
      # Deliver the signup email
      UserNotifier.send_signup_email(@doctor).deliver
      redirect_to(@doctor, :notice => 'Doctor created')
    else
      render :action => 'new'
    end
  end
    
 end


  

