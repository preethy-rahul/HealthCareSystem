class AddDoctorCategoryIdToDoctor < ActiveRecord::Migration
  def change
  	 add_column :doctors, :doctor_category_id, :integer
  end
end
 