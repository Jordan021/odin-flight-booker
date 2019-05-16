class Passenger < ApplicationRecord
  belongs_to :booking, required: false, inverse_of: :passenger, foreign_key: "booking_id"
  belongs_to :flight,  required: false, inverse_of: :passenger 
end
