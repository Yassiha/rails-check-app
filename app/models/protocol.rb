class Protocol < ApplicationRecord
  has_many :tasks, dependent: :destroy
  belongs_to :area
end
