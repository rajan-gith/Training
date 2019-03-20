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

ActiveRecord::Schema.define(version: 2019_03_20_092743) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "street"
    t.string "city"
    t.string "country"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_addresses_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "body"
    t.integer "commentable_id"
    t.string "commentable_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["commentable_id"], name: "index_comments_on_commentable_id"
  end

  create_table "enrollments", force: :cascade do |t|
    t.bigint "game_id"
    t.bigint "user_id"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_enrollments_on_game_id"
    t.index ["user_id", "game_id"], name: "index_enrollments_on_user_id_and_game_id", unique: true
    t.index ["user_id"], name: "index_enrollments_on_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events_users", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "event_id"
    t.index ["event_id"], name: "index_events_users_on_event_id"
    t.index ["user_id", "event_id"], name: "index_events_users_on_user_id_and_event_id", unique: true
    t.index ["user_id"], name: "index_events_users_on_user_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payment_histories", force: :cascade do |t|
    t.bigint "purse_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["purse_id"], name: "index_payment_histories_on_purse_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "game_name", null: false
    t.bigint "team_id"
    t.string "name"
    t.index ["team_id"], name: "index_players_on_team_id"
  end

  create_table "posts", force: :cascade do |t|
    t.bigint "user_id"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "purses", force: :cascade do |t|
    t.bigint "user_id"
    t.integer "funds"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_purses_on_user_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "topics", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", null: false
    t.string "gender"
    t.string "ph_no", limit: 10
    t.index ["username"], name: "index_users_on_username"
  end

  add_foreign_key "addresses", "users"
  add_foreign_key "enrollments", "games"
  add_foreign_key "enrollments", "users"
  add_foreign_key "events_users", "events"
  add_foreign_key "events_users", "users"
  add_foreign_key "payment_histories", "purses"
  add_foreign_key "players", "teams"
  add_foreign_key "posts", "users"
  add_foreign_key "purses", "users"
end
