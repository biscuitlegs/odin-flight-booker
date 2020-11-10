# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Airports
sanfrancisco_airport = Airport.create(name: "San Francisco International Airport", code: "SFO")
heathrow_airport = Airport.create(name: "London Heathrow Airport", code: "LHR")
los_angeles_airport = Airport.create(name: "Los Angeles International Airport", code: "LAX")
dubai_airport = Airport.create(name: "Dubai International Airport", code: "DXB")
tokyo_airport = Airport.create(name: "Tokyo Haneda Airport", code: "HND")

#Flights
Flight.create(departure_time: Time.zone.at(1445345345), duration: 60, departure_airport_id: sanfrancisco_airport.id, destination_airport_id: heathrow_airport.id)
Flight.create(departure_time: Time.zone.at(1445345345), duration: 120, departure_airport_id: los_angeles_airport.id, destination_airport_id: tokyo_airport.id)
Flight.create(departure_time: Time.zone.at(1945345345), duration: 180, departure_airport_id: dubai_airport.id, destination_airport_id: heathrow_airport.id)
Flight.create(departure_time: Time.zone.at(1945345345), duration: 145, departure_airport_id: los_angeles_airport.id, destination_airport_id: heathrow_airport.id)
Flight.create(departure_time: Time.zone.at(2245345345), duration: 145, departure_airport_id: los_angeles_airport.id, destination_airport_id: heathrow_airport.id)
