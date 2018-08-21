class RemoveAdditionIdToPharmacyAdditions < ActiveRecord::Migration[5.1]
  def change
    remove_column :pharmacy_additions, :addition_id
  end
end
