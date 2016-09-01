class AddDoctorIdToSlot < ActiveRecord::Migration

  	def change
  	 add_column :slots, :doctor_id, :integer
  end
end
