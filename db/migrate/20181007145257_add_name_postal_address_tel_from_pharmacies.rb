class AddNamePostalAddressTelFromPharmacies < ActiveRecord::Migration[5.1]
  def up
    add_column :pharmacies, :pharmacy_code, :integer
    add_column :pharmacies, :name, :string
    add_column :pharmacies, :postal, :string
    add_column :pharmacies, :address, :string
    add_column :pharmacies, :tel, :string
    change_column :pharmacies, :pharmacy_code, :integer, :null => false
    change_column :pharmacies, :name, :string, :null => false
    change_column :pharmacies, :postal, :string, :null => false
    change_column :pharmacies, :address, :string, :null => false
    change_column :pharmacies, :tel, :string, :null => false
  end

  def down
    remove_column :pharmacies, :pharmacy_code, :integer
    remove_column :pharmacies, :name, :string
    remove_column :pharmacies, :postal, :string
    remove_column :pharmacies, :address, :string
    remove_column :pharmacies, :tel, :string
  end
end
