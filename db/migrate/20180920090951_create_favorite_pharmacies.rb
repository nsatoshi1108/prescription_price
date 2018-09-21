class CreateFavoritePharmacies < ActiveRecord::Migration[5.1]
  def change
    create_table :favorite_pharmacies do |t|
      t.integer :user_id, :null => false
      t.integer :pharmacy_id, :null => false

      t.timestamps
    end
  end
end
