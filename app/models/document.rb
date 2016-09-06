class Document < ActiveRecord::Base
	
	mount_uploader :certificate, CertificateUploader
	belongs_to :doctor
	has_attached_file :certificate
	validates_attachment_file_name :certificate, :matches => [/doc\Z/, /pdf\Z/, /ppt\Z/ ,/odt\Z/]
#validates :certificate, :presence => true
end

