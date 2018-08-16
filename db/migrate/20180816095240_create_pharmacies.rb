class CreatePharmacies < ActiveRecord::Migration[5.1]
  def change
    create_table :pharmacies do |t|
      t.integer :pharmacy_code
      t.string :name
      t.string :postal
      t.string :address
      t.string :tel

      t.timestamps
    end
  end
end
