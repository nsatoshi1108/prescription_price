class PrescriptionMedicine < ApplicationRecord
  belongs_to :prescription, inverse_of: :prescription_medicines
  belongs_to :medicine, inverse_of: :prescription_medicines
  belongs_to :dose_method, inverse_of: :prescription_medicines
end
