class Addition < ApplicationRecord
  has_many :pharmacy_additions, dependent: :destroy
  has_many :pharmacy_addition_pharmacies, through: :pharmacy_additions, source: :pharmacy
end
