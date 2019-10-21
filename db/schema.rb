ActiveRecord::Schema.define(version: 2019_10_20_032213) do

  enable_extension "plpgsql"

  create_table "destinations", force: :cascade do |t|
    t.bigint "leg_id"
    t.string "city"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["leg_id"], name: "index_destinations_on_leg_id"
  end

  create_table "legs", force: :cascade do |t|
    t.bigint "trip_id"
    t.string "name"
    t.string "start_date"
    t.string "end_date"
    t.string "origin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trip_id"], name: "index_legs_on_trip_id"
  end

  create_table "trips", force: :cascade do |t|
    t.bigint "user_id"
    t.string "name"
    t.string "start_date"
    t.string "end_date"
    t.index ["user_id"], name: "index_trips_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.integer "role"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
