json.array!(@feedbacks) do |feedback|
  json.extract! feedback, :id, :seating_comfort, :air_conditioning, :movie_video_output, :movie_audio_quality, :suggestions, :complaints
  json.url feedback_url(feedback, format: :json)
end
