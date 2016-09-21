class Appointment < ActiveRecord::Base
	belongs_to :doctor
	belongs_to :patient
	belongs_to :slot
	
	#validates :appdate, presence:true
	validates :apptime,:presence => { :message => " cannot be blank" }
	#validates_date :appdate, :on => :create, :on_or_after => :today 
=begin
   #belongs_to :patient, :class_name => Patient, :foreign_key => "patient_id"
      # delegate :name,:phone, :to => :patient
    after_create :reminder

  @@REMINDER_TIME = 30.minutes # minutes before appointment

  # Notify our appointment attendee X minutes before the appointment time
  def reminder
    @twilio_number = ENV['+12566458590']
    @client = Twilio::REST::Client.new ENV['ACea7365d14350573c5d944b58c474dcfc'], ENV['42780d9ca7c03e33246836ef4c9ddcec']
    apptime_str = ((self.apptime).localtime).strftime("%I:%M%p on %b. %d, %Y")
    reminder = " Just a reminder that you have an appointment coming up at #{time_str}."
    message = @client.account.messages.create(
      :from => @twilio_number,
      :to => patient.phone,
      :body => reminder,
    )
    puts message.to
  end

  def when_to_run
    apptime - @@REMINDER_TIME
  end

  handle_asynchronously :reminder, :run_at => Proc.new { |i| i.when_to_run }
=end


end
