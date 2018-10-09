class Prescription < ApplicationRecord
  has_many :prescription_medicines, dependent: :destroy, inverse_of: :prescription

  has_many :prescription_medicine_doses, through: :prescription_medicines, source: :dose_method
  has_many :prescription_medicine_medicines, through: :prescription_medicines, source: :medicine
  belongs_to :user
end
