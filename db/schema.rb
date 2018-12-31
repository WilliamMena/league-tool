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

ActiveRecord::Schema.define(version: 2018_12_31_214144) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bars", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone"
    t.string "contact_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.datetime "date"
    t.bigint "location_id"
    t.bigint "season_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "bar_game"
    t.bigint "team_id"
    t.index ["location_id"], name: "index_events_on_location_id"
    t.index ["season_id"], name: "index_events_on_season_id"
    t.index ["team_id"], name: "index_events_on_team_id"
  end

  create_table "games", force: :cascade do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer "team_1_wins"
    t.integer "team_2_wins"
    t.integer "team_1_high_throws"
    t.integer "team_2_high_throws"
    t.boolean "currently_playing"
    t.bigint "team_1_id"
    t.bigint "team_2_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "event_id"
    t.index ["event_id"], name: "index_games_on_event_id"
    t.index ["team_1_id"], name: "index_games_on_team_1_id"
    t.index ["team_2_id"], name: "index_games_on_team_2_id"
  end

  create_table "gyms", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "email"
    t.string "contant_name"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leagues", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.bigint "gym_id"
    t.bigint "bar_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bar_id"], name: "index_locations_on_bar_id"
    t.index ["gym_id"], name: "index_locations_on_gym_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seasons", force: :cascade do |t|
    t.string "name"
    t.bigint "league_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["league_id"], name: "index_seasons_on_league_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "events", "locations"
  add_foreign_key "events", "seasons"
  add_foreign_key "events", "teams"
  add_foreign_key "games", "events"
  add_foreign_key "locations", "bars"
  add_foreign_key "locations", "gyms"
  add_foreign_key "seasons", "leagues"
end
