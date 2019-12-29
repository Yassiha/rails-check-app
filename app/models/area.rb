class Area < ApplicationRecord
  has_many :protocols, dependent: :destroy
end
