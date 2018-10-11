class ChangeDatatypeTakePointOfDoseMethods < ActiveRecord::Migration[5.1]
  def change
    change_column_null :dose_methods, :take_point, false
  end
end
