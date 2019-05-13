class Flight < ApplicationRecord
  belongs_to :arrival_airport, class_name: 'Airport'
  belongs_to :departure_airport, class_name: 'Airport'
  scope :departing, -> (code) { where(departure_airport_id: code) }
  scope :leave_day, -> (date) { where(start: date.to_date.all_day) }
end
