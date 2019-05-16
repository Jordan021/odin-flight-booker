class Flight < ApplicationRecord
  belongs_to :arrival_airport, class_name: 'Airport', foreign_key: "arrival_airport_id"
  belongs_to :departure_airport, class_name: 'Airport', foreign_key: "departure_airport_id"
  has_many :bookings
  has_many :passengers
  scope :departing,  ->  (code)  { where(departure_airport_id: code) }
  scope :arrivaling, ->  (code)  { where(arrival_airport_id: code) }
  scope :leave_day,  ->  (date)  { where(start: date.to_date.all_day) }
end
