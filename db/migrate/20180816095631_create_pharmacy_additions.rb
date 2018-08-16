class CreatePharmacyAdditions < ActiveRecord::Migration[5.1]
  def change
    create_table :pharmacy_additions do |t|
      t.integer :pharmacy_id
      t.integer :addition_id

      t.timestamps
    end
  end
end
