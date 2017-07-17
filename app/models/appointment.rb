class Appointment < ApplicationRecord
  scope :future, ->(time) { where("date <= ?", time) }
  scope :past, ->(time) { where("date > ?", time) }
end
