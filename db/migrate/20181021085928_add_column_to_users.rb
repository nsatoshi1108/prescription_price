class AddColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string, :null => false
    add_column :users, :birthday, :string, :null => false
    add_column :users, :postal, :string, :null => false
    add_column :users, :address, :string, :null => false
    add_column :users, :tel, :string, :null => false
  end
end
