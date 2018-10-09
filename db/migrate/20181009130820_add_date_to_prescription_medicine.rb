class AddDateToPrescriptionMedicine < ActiveRecord::Migration[5.1]
  def change
    add_column :prescription_medicines, :date, :integer
  end
end
