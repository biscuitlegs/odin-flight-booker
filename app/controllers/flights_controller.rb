class FlightsController < ApplicationController

  def index
    @flights = Flight.all
    @airports = Airport.all
    @number_of_passengers = (1..4)

    if params[:search]
      @matching_flights = Flight.where(
        departure_airport_id: params[:search][:departure_airport_id],
        destination_airport_id: params[:search][:destination_airport_id]
      ).select { |flight| flight.departure_time.strftime("%d/%m/%Y") == params[:search][:departure_date] }
    end
  end


  private

  def only_date(datetime)
    datetime.strftime("%d/%m/%Y %H%M%S")
  end
end
