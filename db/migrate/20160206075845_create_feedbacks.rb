class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.string :seating_comfort
      t.string :air_conditioning
      t.string :movie_video_output
      t.string :movie_audio_quality
      t.string :suggestions
      t.string :complaints

      t.timestamps null: false
    end
  end
end
