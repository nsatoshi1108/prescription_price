class CreatePharmacyUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :pharmacy_users do |t|
      t.string :name, :null => false
      t.integer :password_digest, :null => false
      t.integer :pharmacy_code, :null => false
      t.integer :pharmacy_id, :null => false
      t.string :tel, :null => false
      t.string :fax
      t.string :email, :null => false
      t.string :image
      t.string :movie

      t.timestamps
    end
  end
end
