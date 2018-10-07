class Pharmacy < ApplicationRecord
  has_many :pharmacy_additions, dependent: :destroy
  has_many :pharmacy_addition_additions, through: :pharmacy_additions, source: :addition
  has_many :favorite_pharmacies, dependent: :destroy
  has_many :favorite_pharmacy_users, through: :favorite_pharmacies, source: :user
  has_one :pharmacy_user
end
