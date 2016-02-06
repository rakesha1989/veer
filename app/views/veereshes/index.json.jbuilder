json.array!(@veereshes) do |veeresh|
  json.extract! veeresh, :id, :establishment, :image, :canteen, :proprietor, :seating_capacity, :car_parks, :number_of_tickets_online, :number_of_tickets_box, :total_amount_per_day, :screen_id, :booking_id, :feedback_id, :user_id
  json.url veeresh_url(veeresh, format: :json)
end
