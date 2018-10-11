class ChangeDatatypeNameScoreOfAdditions < ActiveRecord::Migration[5.1]
  def change
    change_column_null :additions, :name, false
    change_column_null :additions, :score, false
  end
end
