class CreatePharmacyUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :pharmacy_users do |t|

      t.timestamps
    end
  end
end
