class CreatePrescriptionMedicines < ActiveRecord::Migration[5.1]
  def change
    create_table :prescription_medicines do |t|
      t.integer :prescription_id
      t.integer :medicine_id
      t.integer :dose
      t.integer :dose_method_id

      t.timestamps
    end
  end
end
