class User < ApplicationRecord
  before_validation { email.downcase! }

  validates :name, presence: true, length: { maximum:30 }
  validates :email, presence: true, length: { maximum:255 },
            format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :password,presence: true, length: { minimum: 6 }
  validates :birthday, presence: true
  validates :postal, presence: true
  validates :address, presence: true
  validates :tel, precence: true

  has_secure_password
  
  has_many :prescriptions, dependent: :destroy, inverse_of: :user
  has_many :favorite_pharmacy_pharmacies, through: :favorite_pharmacies, source: :pharmacy
  has_many :favorite_pharmacies, dependent: :destroy, inverse_of: :user
end
