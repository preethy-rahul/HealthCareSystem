class CreateDoctorCategories < ActiveRecord::Migration
  def change
    create_table :doctor_categories do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
