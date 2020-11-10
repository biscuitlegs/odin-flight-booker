class CreateBookingPassengers < ActiveRecord::Migration[6.0]
  def change
    create_table :booking_passengers do |t|
      t.integer :booking_id
      t.integer :passenger_id

      t.timestamps
    end
  end
end
