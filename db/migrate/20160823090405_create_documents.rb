class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :name

      t.timestamps null: false
      t.references :doctor
    end
  end
end
