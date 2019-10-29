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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2019_10_28_213215) do
=======
ActiveRecord::Schema.define(version: 2019_10_29_151951) do
>>>>>>> 239f7a792a0d4317f334a3c691d8df60e1cf7d54

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "country_informations", force: :cascade do |t|
    t.string "code"
    t.text "passport_info"
    t.text "visa_info"
    t.boolean "has_advisory_warning"
    t.text "vaccine_info"
    t.text "health_info"
    t.text "transit_info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "currency_informations", force: :cascade do |t|
    t.bigint "destination_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["destination_id"], name: "index_currency_informations_on_destination_id"
  end

  create_table "current_location_informations", force: :cascade do |t|
    t.string "code"
    t.text "passport_info"
    t.text "visa_info"
    t.boolean "has_advisory_warning"
    t.text "vaccine_info"
    t.text "health_info"
    t.text "transit_info"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_current_location_informations_on_user_id"
  end

  create_table "destinations", force: :cascade do |t|
    t.bigint "leg_id"
    t.string "city"
    t.string "country"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["leg_id"], name: "index_destinations_on_leg_id"
  end

  create_table "embassies", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.boolean "passport_services"
    t.float "lat"
    t.float "long"
    t.string "phone"
    t.string "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.bigint "destination_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["destination_id"], name: "index_events_on_destination_id"
  end

  create_table "followers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_followers_on_user_id"
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
    t.bigint "leg_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["leg_id"], name: "index_lodgings_on_leg_id"
  end

  create_table "notifications", force: :cascade do |t|
    t.boolean "active", default: true
    t.bigint "friendship_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["friendship_id"], name: "index_notifications_on_friendship_id"
  end

  create_table "pois", force: :cascade do |t|
    t.bigint "destination_id"
    t.string "name"
    t.string "type"
    t.string "snippet"
    t.float "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["destination_id"], name: "index_pois_on_destination_id"
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

  create_table "travel_advisories", force: :cascade do |t|
    t.bigint "destination_id"
    t.string "name"
    t.float "score"
    t.string "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["destination_id"], name: "index_travel_advisories_on_destination_id"
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
    t.float "longitude"
    t.float "latitude"
    t.integer "role", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "currency_informations", "destinations"
  add_foreign_key "current_location_informations", "users"
  add_foreign_key "events", "destinations"
  add_foreign_key "followers", "users"
  add_foreign_key "friendships", "users"
  add_foreign_key "friendships", "users", column: "friend_id"
  add_foreign_key "lodgings", "legs"
  add_foreign_key "notifications", "friendships"
  add_foreign_key "pois", "destinations"
  add_foreign_key "transportations", "legs"
  add_foreign_key "travel_advisories", "destinations"
end
