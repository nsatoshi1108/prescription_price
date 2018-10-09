class Medicine < ApplicationRecord
  has_many :prescription_medicines, inverse_of: :medicine
end
