class Protocol < ApplicationRecord
  has_many :tasks, dependent: :destroy
end
