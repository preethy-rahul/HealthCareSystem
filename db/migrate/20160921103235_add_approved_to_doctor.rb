class AddApprovedToDoctor < ActiveRecord::Migration
  
 def self.up
    add_column :doctors, :approved, :boolean, :default => false, :null => false
    add_index  :doctors, :approved
  end

  def self.down
    remove_index  :doctors, :approved
    remove_column :doctors, :approved
  end
end
