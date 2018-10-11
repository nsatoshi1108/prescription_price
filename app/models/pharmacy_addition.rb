class PharmacyAddition < ApplicationRecord
  belongs_to :pharmacy, inverse_of: :pharmacy_additions
  belongs_to :addition, inverse_of: :pharmacy_additions
end
