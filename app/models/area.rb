class Area < ApplicationRecord
  has_many :protocols, dependent: :destroy
  has_many :feedbacks, dependent: :destroy
end
