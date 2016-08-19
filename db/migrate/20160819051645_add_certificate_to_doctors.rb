class AddCertificateToDoctors < ActiveRecord::Migration
  def change
    add_column :doctors, :certificate, :string
  end
end
