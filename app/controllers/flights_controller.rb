class FlightsController < ApplicationController
  
  def index 
    @departure_airports = Airport.all.map{ |u| [u.name, u.id] }
    @arrival_airports = Airport.all.map{ |u| [u.name, u.id] }
    @passengers = [[1,1],[2,2],[3,3],[4,4]]
    @last_date = Flight.maximum(:start).to_date
    @flight_date = @first_date = Flight.minimum(:start).to_date 

    if search = params[:flights]
      @departure = search[:departure_airport_id]
      @arrival   = search[:arrival_airport_id]
      @leave_date = search[:leaving_date]
      @passenger = search[:passengers]
      
      @search_result = Flight.departing(search[:departure_airport_id]).arrivaling(search[:arrival_airport_id]).leave_day(
                       search[:leaving_date])
    end 
    
  end
end
