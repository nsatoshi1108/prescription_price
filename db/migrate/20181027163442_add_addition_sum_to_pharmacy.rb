class AddAdditionSumToPharmacy < ActiveRecord::Migration[5.1]
  def change
    add_column :pharmacies, :addition_sum, :integer, :default => 0, :null => false
  end
end
