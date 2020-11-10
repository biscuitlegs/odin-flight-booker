class Flight < ApplicationRecord
    belongs_to :from_airport, class_name: "Airport", foreign_key: "departure_airport_id"
    belongs_to :to_airport, class_name: "Airport", foreign_key: "destination_airport_id"
    has_many :bookings

    def departure_time_date
        departure_time.strftime("%d/%m/%Y")
    end

    def departure_time_date_and_time
        departure_time.strftime("%d/%m/%Y %H:%M:%S")
    end

end
