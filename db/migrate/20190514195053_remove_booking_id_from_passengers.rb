class RemoveBookingIdFromPassengers < ActiveRecord::Migration[5.2]
  def change
    remove_column :passengers, :booking_id
  end
end
