class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   # validates_format_of :name, with: with: /\A[a-zA-Z]+\z/
    #validates :name, presence:true,format: { with: /\A[a-zA-Z]+\z/,
    #message: "only allows letters" }
   # validates :phone, presence:true
    #validates :phone, numericality:true
   # validates :username, presence:true#, format: { with: /\A[a-zA-Z]+\z/,
    #message: "only allows letters" }
end

