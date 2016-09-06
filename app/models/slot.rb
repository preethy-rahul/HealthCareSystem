class Slot < ActiveRecord::Base
belongs_to :doctor
validates :start_time, presence:true
validates :end_time, presence:true
validates :duration, presence:true
validates_datetime :end_time, :after => :start_time ,
:presence => { :message => " end time should greater than start time" }# Method symbol

end
