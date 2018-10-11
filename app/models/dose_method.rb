class DoseMethod < ApplicationRecord
  has_many :prescription_medicines, inverse_of: :dose_method
end
