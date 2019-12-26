class Task < ApplicationRecord
  belongs_to :protocol
  has_many :feedbacks, dependent: :destroy
end
