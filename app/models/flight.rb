class Flight < ApplicationRecord
    belongs_to :from_airport, class_name: "Airport", foreign_key: "departure_airport_id"
    belongs_to :to_airport, class_name: "Airport", foreign_key: "destination_airport_id"
end
