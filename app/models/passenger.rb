class Passenger < ApplicationRecord
  belongs_to :booking, required: false
  belongs_to :flight,  required: false 
end
