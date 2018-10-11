class AddCodeNameStandardFromMedicines < ActiveRecord::Migration[5.1]
  def up
    add_column :medicines, :code, :string
    add_column :medicines, :name, :string
    add_column :medicines, :standard, :string
    change_column :medicines, :code, :string, :null => false
    change_column :medicines, :name, :string, :null => false
    change_column :medicines, :standard, :string, :null => false
  end

  def down
    remove_column :medicines, :code, :string
    remove_column :medicines, :name, :string
    remove_column :medicines, :standard, :string
  end
end
