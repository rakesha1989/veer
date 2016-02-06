class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.date :day
      t.time :show
      t.string :type
      t.integer :number_of_seats

      t.timestamps null: false
    end
  end
end
