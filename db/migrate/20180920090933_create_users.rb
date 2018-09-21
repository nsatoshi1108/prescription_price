class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name, :null => false
      t.integer :password_digest, :null => false
      t.string :email, :null => false
      t.string :birthday, :null => false
      t.string :postal, :null => false
      t.string :address, :null => false
      t.string :tel, :null => false

      t.timestamps
    end
  end
end
