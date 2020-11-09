# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

sanfrancisco_airport = Airport.create(name: "San Francisco International", code: "SFO")
heathrow_airport = Airport.create(name: "London Heathrow", code: "LHR")

Flight.create(departure_time: Time.zone.now, duration: 60, departure_airport_id: sanfrancisco_airport.id, destination_airport_id: heathrow_airport.id)
