class CreateMedicines < ActiveRecord::Migration[5.1]
  def change
    create_table :medicines do |t|
      t.string :code
      t.string :name
      t.integer :original_price
      t.integer :generic_price
      t.string :classification
      t.string :standard
      t.string :usage

      t.timestamps
    end
  end
end
