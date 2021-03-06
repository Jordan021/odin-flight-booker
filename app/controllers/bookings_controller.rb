class BookingsController < ApplicationController

  def new
    @booking = Booking.new(booking_params)
    @flight = Flight.find(params[:booking][:flight])
    @num_passengers = params[:booking][:passengers]
  end

  def create 
    @booking = Booking.new(booking_params)
    if @booking.save 
      flash[:info] = "Booking confirmed"
      redirect_to booking_path(@booking)
    else 
      flash.now[:error] = "Details incorrect"
    end 
  end 

  def show 
    @booking = Booking.find_by_id(params[:id])
  end 

  private 
    def booking_params
      params.require(:booking).permit(:flight_id, passengers_attributes: [:flight_id, :name, :email])
    end 
end
