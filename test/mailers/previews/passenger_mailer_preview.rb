# Preview all emails at http://localhost:3000/rails/mailers/passenger_mailer
class PassengerMailerPreview < ActionMailer::Preview
    def ticket_email
        PassengerMailer.with(passenger: Passenger.first).ticket_email
    end
end
