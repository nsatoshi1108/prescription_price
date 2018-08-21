class Addition < ApplicationRecord
  has_many :pharmacy_additions, dependent: :destroy
end
