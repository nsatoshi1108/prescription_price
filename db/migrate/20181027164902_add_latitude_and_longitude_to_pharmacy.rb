class AddLatitudeAndLongitudeToPharmacy < ActiveRecord::Migration[5.1]
  def change
    add_column :pharmacies, :latitude, :decimal,, :precision => 9, :scale => 6, :null => false
    add_column :pharmacies, :longitude, :decimal, :precision => 9, :scale => 6, :null => false
  end
end
