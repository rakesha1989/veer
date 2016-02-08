# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160206230252) do

  create_table "bookings", force: :cascade do |t|
    t.date     "day"
    t.time     "show"
    t.string   "type"
    t.integer  "number_of_seats"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "feedbacks", force: :cascade do |t|
    t.string   "seating_comfort"
    t.string   "air_conditioning"
    t.string   "movie_video_output"
    t.string   "movie_audio_quality"
    t.string   "suggestions"
    t.string   "complaints"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "user_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string   "name"
    t.string   "language"
    t.string   "duration"
    t.date     "release_date"
    t.string   "image1"
    t.string   "image2"
    t.string   "image3"
    t.string   "video_trailer"
    t.integer  "screen_id"
    t.integer  "review_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "online_bookings", force: :cascade do |t|
    t.integer  "movie_id"
    t.integer  "booking_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "imdb_rating"
    t.string   "times_of_india"
    t.string   "user_rating"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "screens", force: :cascade do |t|
    t.string   "name"
    t.string   "capacity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "veereshes", force: :cascade do |t|
    t.string   "establishment"
    t.string   "image"
    t.string   "canteen"
    t.string   "proprietor"
    t.string   "seating_capacity"
    t.string   "car_parks"
    t.integer  "number_of_tickets_online"
    t.integer  "number_of_tickets_box"
    t.string   "total_amount_per_day"
    t.integer  "screen_id"
    t.integer  "booking_id"
    t.integer  "feedback_id"
    t.integer  "user_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

end
