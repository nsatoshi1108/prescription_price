class AddPharmacyIdToPharmacyAdditions < ActiveRecord::Migration[5.1]
  def change
    add_column :pharmacy_additions, :pharmacy_id, :integer
  end
end
