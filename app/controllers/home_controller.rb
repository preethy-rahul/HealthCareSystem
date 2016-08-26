class HomeController < ApplicationController


  def index
  	@categories = DoctorCategory.all
  end 
  def index1
  end 
  
 end