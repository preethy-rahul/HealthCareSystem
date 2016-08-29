class HomeController < ApplicationController


  def index
  	@categories = DoctorCategory.all
  end 


  def index2
  		@categories = DoctorCategory.all
  end 
  


 end