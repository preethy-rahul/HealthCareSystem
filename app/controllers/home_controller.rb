class HomeController < ApplicationController


  def index
  	  @search =Doctor.search(params[:q])
  @doctors = @search.result




  	@categories = DoctorCategory.all
  end 


  def index2
  		@categories = DoctorCategory.all
  end 
  


 end