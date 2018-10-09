class Addition < ApplicationRecord
  has_many :pharmacy_additions, dependent: :destroy, inverse_of: :addition
  has_many :pharmacy_addition_pharmacies, through: :pharmacy_additions, source: :pharmacy
end
