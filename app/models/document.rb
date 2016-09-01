class Document < ActiveRecord::Base
	
	mount_uploader :certificate, CertificateUploader
	belongs_to :doctor
	#has_attached_file :certificate
	
validates :certificate, :presence => true
end

