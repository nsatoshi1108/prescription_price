class CreateFavoritePharmacies < ActiveRecord::Migration[5.1]
  def change
    create_table :favorite_pharmacies do |t|

      t.timestamps
    end
  end
end
