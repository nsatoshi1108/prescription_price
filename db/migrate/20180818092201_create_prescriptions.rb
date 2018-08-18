class CreatePrescriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :prescriptions do |t|
      t.integer :user_id
      t.integer :number_of_medicine

      t.timestamps
    end
  end
end
