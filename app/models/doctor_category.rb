class DoctorCategory < ActiveRecord::Base
	has_many :doctors
    has_attached_file :photo
    validates_attachment_file_name :photo, :matches => [/png\Z/, /jpeg\Z/, /gif\Z/ ,/jpg\Z/]
end
