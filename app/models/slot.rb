class Slot < ActiveRecord::Base
belongs_to :doctor
validates :start_time, presence:true
validates :end_time, presence:true
validates :duration, presence:true
end
