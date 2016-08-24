class Document < ActiveRecord::Base
	mount_uploader :certificate, CertificateUploader
	belongs_to :doctor
end
