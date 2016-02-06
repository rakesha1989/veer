class CreateVeereshes < ActiveRecord::Migration
  def change
    create_table :veereshes do |t|
      t.string :establishment
      t.string :image
      t.string :canteen
      t.string :proprietor
      t.string :seating_capacity
      t.string :car_parks
      t.integer :number_of_tickets_online
      t.integer :number_of_tickets_box
      t.string :total_amount_per_day
      t.integer :screen_id
      t.integer :booking_id
      t.integer :feedback_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
