class DoctorsController < ApplicationController
	def index
		
  if params[:approved] == "false"
      @doctors = Doctor.where(approved: false)
    else
      @doctors = Doctor.all
    end
  





		@doctors = Doctor.all
	  @search = Doctor.search(params[:q])
  @doctors = @search.result
end


def show
  @doctor=Doctor.find(params[:id])

	end
  def edit
      @doctor = Doctor.find(params[:id])

  end
	def new
		 @doctor = Doctor.new
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
def update
 # @pending = Doctor.pending.size
 @doctor = Doctor.find(params[:id])
 if @doctor.update_attribute(:approved, true)
  redirect_to @doctor
 else 
  @doctor.update_attribute(:approved,false)
 redirect_to @doctor
 end



  if @doctor.update_attributes(doctor_params)
      flash[:success] = "Doctor updated"
      redirect_to @doctor
    else
      render 'edit'
    end
  
  end

 def destroy
    @doctor.destroy
    respond_to do |format|
      format.html { redirect_to appointments_url, notice: 'Doctor was successfully destroyed.' }
      format.json { head :no_content }
 end  



private
    
  def approve_or_not
    doctor = Doctor.find(params[:id])
    doctor.find_each { |approved| approved.update_column(:approved, true) }
  end

    # Use callbacks to share common setup or constraints between actions.
    def set_doctor
      @doctor = Doctor.find(params[:id])
    end
   def doctor_params
      params.require(:doctor).permit(:name,:age,:sex,:phone,:experience,:clinic_details,:city,:state,:userame,:email)
    end

  end






