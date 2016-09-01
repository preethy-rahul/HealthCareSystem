class Patient < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    has_many :appointments

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
