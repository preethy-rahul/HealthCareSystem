class DoctorCategoryController < ApplicationController
	def index
		@category=DoctorCategory.all
	end
	def show 
     @category=DoctorCategory.find(params[:id])
	end
	def new
		@category=DoctorCategory.new
	end
	def edit
	end
end
