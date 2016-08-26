class HomeController < ApplicationController


  def index
  	@categories = DoctorCategory.all
  end  
  
 end