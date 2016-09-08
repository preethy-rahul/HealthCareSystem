class Doctor < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  attr_accessor :current_user
  belongs_to :doctor_category
  has_many :documents#,:dependent=>destroy
  has_many :appointments
  has_many :slots

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  ratyrate_rateable 'experience'

  #validates_processing_of :certificate
  #validate :certificate_size_validation
   #validates :name, :presence => { :message => ": The name only allows letters" }
   # validates :age, numericality:true, :presence => { :message => ": Only allows digits" }
   # validates :sex, :presence => { :message => ": Only allows letters" }
   # validates :phone,:presence => { :message => ": Only allows digits" }
    #validates :experience,:presence => { :message => ": The name only allows letters" }
    #validates :clinic_details, presence: true
    #validates :city,:presence => { :message => ": Only allows letters" }
    #validates :state,:presence => { :message => ": Only allows letters" }
    #validates :username,presence:true
    validates :email, presence:true
    validates_format_of :phone, with: /\A(\d{10}|\(?\d{3}\)?[-. ]\d{3}[-.]\d{4})\z/
    validates_format_of :email, with: /\A[\w]([^@\s,;]+)@(([\w-]+\.)+(com|edu|org|net|gov|mil|biz|info))\z/i

   #private
  # def certificate_size_validation
     #errors[:certificate]<<"Should be less than 70KB " if certificate.size >0.7.megabytes
     #end
end
