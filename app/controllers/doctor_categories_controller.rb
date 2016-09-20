class DoctorCategoriesController < ApplicationController
	def index
		@doctorcategories=DoctorCategory.all
		


     @search = DoctorCategory.search(params[:q])
  @doctorcategories = @search.result
	end
	def show
	#@doctorcategory = DoctorCategory.find(params[:doctor_category_id]) 
     @doctorcategory=DoctorCategory.find(params[:id])
     if @doctorcategory.nil?     # or unless @doctorcategory
    render 'error'
  end
	end


	def new
		@doctorcategory=DoctorCategory.new
	end


	def create
		@doctorcategory = DoctorCategory.new(doctor_category_params)
	
    if @doctorcategory.save
      flash[:success] = "The name and image was added!"
      redirect_to doctor_categories_path
    else
      render 'new'
    end
  end
  def update
        @doctorcategory= DoctorCategory.find(params[:id])
 
            if @doctorcategory.update(doctor_category_params)
            redirect_to @doctorcategory
          else
            render 'edit'
         end
    end
	def destroy
         @doctorcategory = DoctorCategory.find(params[:id])
         @doctorcategory.destroy
 
        redirect_to doctor_categories_path
    end

	def edit
       @doctorcategory= DoctorCategory.find(params[:id])
    end

 private

  def doctor_category_params
    params.require(:doctor_category).permit(:photo, :name)
 
end	
end

