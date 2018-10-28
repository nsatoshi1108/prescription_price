class AddIndexToPharmacyUsersEmail < ActiveRecord::Migration[5.1]
  def change
    add_index :pharmacy_users, :email, unique: true
  end
end
