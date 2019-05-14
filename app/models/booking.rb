class Booking < ApplicationRecord
  has_many :passengers
  belongs_to :flights, required: false 
  accepts_nested_attributes_for :passengers
end
