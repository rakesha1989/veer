json.array!(@online_bookings) do |online_booking|
  json.extract! online_booking, :id, :movie_id, :booking_id
  json.url online_booking_url(online_booking, format: :json)
end
