class Appointment < ActiveRecord::Base
	belongs_to :doctor
	belongs_to :patient
	belongs_to :slot
	#validates :appdate, presence:true
	validates :apptime, presence:true
end
