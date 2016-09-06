class Appointment < ActiveRecord::Base
	belongs_to :doctor
	belongs_to :patient
	belongs_to :slot
	validates :appdate, presence:true
	validates :apptime,:presence => { :message => " cannot be blank" }
	#validates_date :appdate, :on => :create, :on_or_after => :today 

end
