class RemovePharmacyIdToPharmacyAdditions < ActiveRecord::Migration[5.1]
  def change
    remove_column :pharmacy_additions, :pharmacy_id
  end
end
