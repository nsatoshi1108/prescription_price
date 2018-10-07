class PrescriptionMedicine < ApplicationRecord
  belongs_to :prescription
  belongs_to :medicine
  belongs_to :dose_method
end
