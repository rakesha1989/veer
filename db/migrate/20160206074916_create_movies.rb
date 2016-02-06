class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.string :language
      t.string :duration
      t.date :release_date
      t.string :image1
      t.string :image2
      t.string :image3
      t.string :video_trailer
      t.integer :screen_id
      t.integer :review_id

      t.timestamps null: false
    end
  end
end
