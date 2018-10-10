class Prescription < ApplicationRecord
  has_many :prescription_medicines, dependent: :destroy, inverse_of: :prescription
  accepts_nested_attributes_for :prescription_medicines, allow_destroy: true
  has_many :prescription_medicine_doses, through: :prescription_medicines, source: :dose_method
  has_many :prescription_medicine_medicines, through: :prescription_medicines, source: :medicine
  belongs_to :user
end
