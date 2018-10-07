class ChangeDatatypePharmacyIdAdditionIdOfPharmacyAdditions < ActiveRecord::Migration[5.1]
  def change
    change_column_null :pharmacy_additions, :pharmacy_id, false
    change_column_null :pharmacy_additions, :addition_id, false
  end
end
