class Pharmacy < ApplicationRecord
  has_many :pharmacy_additions, dependent: :destroy
  has_many :pharmacy_addition_additions, through: :pharmacy_additions, source: :addition
end
