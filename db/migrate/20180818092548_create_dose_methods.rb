class CreateDoseMethods < ActiveRecord::Migration[5.1]
  def change
    create_table :dose_methods do |t|
      t.string :number_of_doses
      t.string :take_point

      t.timestamps
    end
  end
end
