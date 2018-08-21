class AddAdditionIdToPharmacyAdditions < ActiveRecord::Migration[5.1]
  def change
    add_column :pharmacy_additions, :addition_id, :integer
  end
end
