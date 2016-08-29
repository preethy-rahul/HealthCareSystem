class AdminsController < ApplicationController

  def index
	#@doctor=Doctor.find(params[:id])
	#@doctors = Doctor.find_by_id(params[:doctor_id])	
	@doctors = Doctor.all	
 end
 def show
 	#@patients= Patient.find_by_id(params[:patient_id])
 	patients=Patient.all
	@patient= Patient.find(params[:id])

end
  
 end