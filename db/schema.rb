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

ActiveRecord::Schema.define(version: 2019_10_23_131431) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "destinations", force: :cascade do |t|
    t.bigint "leg_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["leg_id"], name: "index_destinations_on_leg_id"
  end

  create_table "friendships", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "friend_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["friend_id"], name: "index_friendships_on_friend_id"
    t.index ["user_id", "friend_id"], name: "index_friendships_on_user_id_and_friend_id", unique: true
    t.index ["user_id"], name: "index_friendships_on_user_id"
  end

  create_table "legs", force: :cascade do |t|
    t.bigint "trip_id"
    t.string "name"
    t.string "start_date"
    t.string "end_date"
    t.string "start_location"
    t.string "end_location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trip_id"], name: "index_legs_on_trip_id"
  end

  create_table "lodgings", force: :cascade do |t|
    t.string "name"
    t.string "arrival_date"
    t.string "departure_date"
    t.string "city"
    t.bigint "destination_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["destination_id"], name: "index_lodgings_on_destination_id"
  end

  create_table "nofications", force: :cascade do |t|
    t.boolean "active", default: true
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_nofications_on_user_id"
  end

  create_table "transportations", force: :cascade do |t|
    t.integer "mode", default: 0
    t.string "departure_time"
    t.string "arrival_time"
    t.string "departure_city"
    t.string "arrival_city"
    t.bigint "leg_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["leg_id"], name: "index_transportations_on_leg_id"
  end

  create_table "trips", force: :cascade do |t|
    t.bigint "user_id"
    t.string "name"
    t.string "start_date"
    t.string "end_date"
    t.index ["user_id"], name: "index_trips_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "role", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "friendships", "users"
  add_foreign_key "friendships", "users", column: "friend_id"
  add_foreign_key "lodgings", "destinations"
  add_foreign_key "nofications", "users"
  add_foreign_key "transportations", "legs"
end
