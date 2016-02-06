json.array!(@bookings) do |booking|
  json.extract! booking, :id, :day, :show, :type, :number_of_seats
  json.url booking_url(booking, format: :json)
end
