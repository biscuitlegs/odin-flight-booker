class PassengerMailer < ApplicationMailer
    def ticket_email
        @passenger = params[:passenger]

        mail(to: @passenger.email, subject: "Odin Ticket")
    end
end
