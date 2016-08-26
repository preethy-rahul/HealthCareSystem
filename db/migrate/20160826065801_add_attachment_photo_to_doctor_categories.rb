class AddAttachmentPhotoToDoctorCategories < ActiveRecord::Migration
  def self.up
    change_table :doctor_categories do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :doctor_categories, :photo
  end
end
