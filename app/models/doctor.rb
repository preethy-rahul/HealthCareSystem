class Doctor < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
   mount_uploader :certificate, CertificateUploader
  belongs_to :doctorcategory
  has_many :documents

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

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
   

   #private
  # def certificate_size_validation
     #errors[:certificate]<<"Should be less than 70KB " if certificate.size >0.7.megabytes
     #end
end
