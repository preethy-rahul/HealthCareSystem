class RemoveCertificateFromDoctors < ActiveRecord::Migration
  def change
    remove_column :doctors, :certificate, :string
  end
end
