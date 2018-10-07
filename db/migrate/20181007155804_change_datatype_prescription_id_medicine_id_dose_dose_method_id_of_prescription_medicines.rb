class ChangeDatatypePrescriptionIdMedicineIdDoseDoseMethodIdOfPrescriptionMedicines < ActiveRecord::Migration[5.1]
  def change
    change_column_null :prescription_medicines, :prescription_id, false
    change_column_null :prescription_medicines, :medicine_id, false
    change_column_null :prescription_medicines, :dose, false
    change_column_null :prescription_medicines, :dose_method_id, false
  end
end
