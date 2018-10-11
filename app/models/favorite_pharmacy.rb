class FavoritePharmacy < ApplicationRecord
  belongs_to :user, inverse_of: :favorite_pharmacies
  belongs_to :pharmacy, inverse_of: :favorite_pharmacies
end
