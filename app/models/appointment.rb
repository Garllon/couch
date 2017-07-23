class Appointment < ApplicationRecord
  scope :future, ->(time) { where("date <= ?", time) }
  scope :past, ->(time) { where("date > ?", time) }

  geocoded_by :full_street_address
  after_validation :geocode

  def full_street_address
    [street, postal_code, city, country_code].join(',')
  end
end
