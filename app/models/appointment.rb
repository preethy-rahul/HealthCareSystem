class Appointment < ActiveRecord::Base
	belongs_to :doctor
	belongs_to :patient
	#validates :appdate, presence:true
	validates :apptime, presence:true
end
