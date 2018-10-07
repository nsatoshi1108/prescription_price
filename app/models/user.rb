class User < ApplicationRecord
  has_many :prescriptions, dependent: :destroy
  has_many :favorite_pharmacy_pharmacies, through: :favorite_pharmacies, source: :pharmacy
  has_many :favorite_pharmacies, dependent: :destroy
end
