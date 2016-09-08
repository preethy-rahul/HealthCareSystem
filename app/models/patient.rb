class Patient < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

#def self.current_user
 # Thread.current[:user]
#end

#def self.current_user=(user)
 # Thread.current[:user] = user
#end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    has_many :appointments
    has_many :doctors
    
   ratyrate_rater
   #validates :name, presence: true ,format: { with: /\A[a-zA-Z]+\z/,
  #message: "only allows letters" }
  #validates :age, presence: true, numericality: true
   ##message: "only allows letters" }
   #validates :phone, presence: true, numericality: true
  #validates :city,presence: true , format: { with: /\A[a-zA-Z]+\z/,
    #message: "only allows letters" }
    
   # validates: state, presence: true, format: { with: /\A[a-zA-Z]+\z/,
    #message: "only allows letters" }
    #validates :username, presence: true ,length: { maximum: 10 },
end
