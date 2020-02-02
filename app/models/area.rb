class Area < ApplicationRecord
  has_many :protocols, dependent: :destroy
  has_many :area_users
  has_many :users, through: :area_users
end
