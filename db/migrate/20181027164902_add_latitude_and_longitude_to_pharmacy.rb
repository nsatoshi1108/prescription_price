class AddLatitudeAndLongitudeToPharmacy < ActiveRecord::Migration[5.1]
  def change
    add_column :pharmacies, :latitude, :decimal, :null => false
    add_column :pharmacies, :longitude, :decimal, :null => false
  end
end
