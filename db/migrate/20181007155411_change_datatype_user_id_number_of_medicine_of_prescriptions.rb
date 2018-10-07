class ChangeDatatypeUserIdNumberOfMedicineOfPrescriptions < ActiveRecord::Migration[5.1]
  def change
    change_column_null :prescriptions, :user_id, false
    change_column_null :prescriptions, :number_of_medicine, false
  end
end
