class RemoveCodeNameStandardFromMedicines < ActiveRecord::Migration[5.1]
  def change
    remove_column :medicines, :name, :string
    remove_column :medicines, :code, :string
    remove_column :medicines, :standard, :string
  end
end
