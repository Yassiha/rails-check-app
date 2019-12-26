class Feedback < ApplicationRecord
  belongs_to :task
  belongs_to :protocol
  belongs_to :area
end
