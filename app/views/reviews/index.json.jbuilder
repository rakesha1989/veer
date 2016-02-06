json.array!(@reviews) do |review|
  json.extract! review, :id, :imdb_rating, :times_of_india, :user_rating
  json.url review_url(review, format: :json)
end
