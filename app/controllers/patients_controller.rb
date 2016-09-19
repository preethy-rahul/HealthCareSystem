class PatientsController < ApplicationController

def index
		
 @patients = Patient.all		
end

def show 
	@patient= Patient.find(params[:id])
end 
  def edit
  end
  def update
    respond_to do |format|
      if @patient.update(patient_params)
        format.html { redirect_to @dpatient, notice: 'Patient was successfully updated.' }
        format.json { render :show, status: :ok, location: @patient }
      else
        format.html { render :edit }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end
  
 def create
    # Create the user from params
    @patient = Patient.new(params[:patient])
    if @patient.save
      # Deliver the signup email
      UserNotifier.send_signup_email(@patient).deliver
      redirect_to(@patient, :notice => 'Patient created')
    else
      render :action => 'new'
    end
  end

def destroy
    @patient.destroy
    respond_to do |format|
      format.html { redirect_to patients_url, notice: 'Patient was successfully destroyed.' }
      format.json { head :no_content }
    end
   end
private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_params
      params.require(:patient).permit(:name,:age,:sex,:phone,:city,:state,:userame,:email)
    end


 end
