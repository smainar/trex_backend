
ActiveRecord::Schema.define(version: 2019_10_20_225121) do

  enable_extension "plpgsql"

  create_table "destinations", force: :cascade do |t|
    t.bigint "leg_id"
    t.string "name"
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

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "role", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "friendships", "users"
  add_foreign_key "friendships", "users", column: "friend_id"
end
