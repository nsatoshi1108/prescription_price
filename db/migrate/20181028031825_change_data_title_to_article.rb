class ChangeDataTitleToArticle < ActiveRecord::Migration[5.1]
  def change
    change_column :pharmacy_users, :password_digest, :string
  end
end
