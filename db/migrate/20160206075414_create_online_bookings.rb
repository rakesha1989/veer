class CreateOnlineBookings < ActiveRecord::Migration
  def change
    create_table :online_bookings do |t|
      t.integer :movie_id
      t.integer :booking_id

      t.timestamps null: false
    end
  end
end
