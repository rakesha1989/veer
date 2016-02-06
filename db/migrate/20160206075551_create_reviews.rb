class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :imdb_rating
      t.string :times_of_india
      t.string :user_rating

      t.timestamps null: false
    end
  end
end
