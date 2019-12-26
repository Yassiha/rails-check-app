class Protocol < ApplicationRecord
  has_many :tasks, dependent: :destroy
  has_many :feedbacks, dependent: :destroy
  belongs_to :area
end
