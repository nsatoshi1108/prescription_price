class ChangeDatatypeOriginalPriceGenericPriceOfMedicines < ActiveRecord::Migration[5.1]
  def change
    change_column :medicines, :original_price, :string
    change_column :medicines, :generic_price, :string
  end
end
