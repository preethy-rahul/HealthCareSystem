class DoctorCategoriesController < ApplicationController
	def index
		@doctorcategories=DoctorCategory.all
	end
	def show
	#@doctorcategory = DoctorCategory.find(params[:doctor_category_id]) 
     @doctorcategory=DoctorCategory.find(params[:id])
	end
	def new
		@doctorcategory=DoctorCategory.new
	end
	def edit
	end
	
end
