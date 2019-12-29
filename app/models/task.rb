class Task < ApplicationRecord
  belongs_to :protocol
  has_one :type
end
