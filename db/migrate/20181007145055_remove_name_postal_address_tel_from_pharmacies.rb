class RemoveNamePostalAddressTelFromPharmacies < ActiveRecord::Migration[5.1]
  def change
    remove_column :pharmacies, :name, :string
    remove_column :pharmacies, :postal, :string
    remove_column :pharmacies, :address, :string
    remove_column :pharmacies, :tel, :string
  end
end
