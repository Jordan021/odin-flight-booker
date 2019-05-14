class AddIndexToFlights < ActiveRecord::Migration[5.2]
  def change
    add_index :flights, :departure_airport_id
    add_index :flights, :arrival_airport_id
  end
end
