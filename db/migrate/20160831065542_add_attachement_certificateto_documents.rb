class AddAttachementCertificatetoDocuments < ActiveRecord::Migration
 
 def self.up
    change_table :documents do |t|
      t.attachment :certificate
    end
  end

  def self.down
    remove_attachment :documents, :certificate
  end
end