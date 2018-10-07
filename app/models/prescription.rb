class Prescription < ApplicationRecord
  has_many :prescriptions_medicines, dependent: :destroy
  has_many :prescriptions_medicine_doses, through: :prescriptions_medicines, source: :dose_method
  has_many :prescriptions_medicine_medicines, through: :prescriptions_medicines, source: :medicine
  belongs_to :user
end
