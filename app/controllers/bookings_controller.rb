class BookingsController < ApplicationController
    def index
        @bookings = Booking.all
    end

    def show
        @booking = Booking.find(params[:id])
    end

    def new
        @booking = Booking.new
        @flight = Flight.find(params[:selected_flight][:flight_id])
        @number_of_passengers = params[:selected_flight][:number_of_passengers].to_i
        @number_of_passengers.times { @booking.passengers.build }
    end
    
    def create
        @booking = Booking.new(booking_params)

        if @booking.save
            @booking.passengers.each do |passenger|
                PassengerMailer.with(passenger: passenger).ticket_email.deliver_now
            end
            flash[:success] = "Booking successful"
            redirect_to @booking
        else
            flash.now[:error] = "There was an error processing your booking"
            render :new
        end
    end


    private

    def booking_params
        params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
    end
end
