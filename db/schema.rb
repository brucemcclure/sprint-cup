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

ActiveRecord::Schema.define(version: 2020_05_04_083447) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "awards", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "amount"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_awards_on_category_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fines", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "amount"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "sort"
    t.index ["category_id"], name: "index_fines_on_category_id"
  end

  create_table "leagues", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["category_id"], name: "index_leagues_on_category_id"
    t.index ["user_id"], name: "index_leagues_on_user_id"
  end

  create_table "members", force: :cascade do |t|
    t.bigint "league_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["league_id"], name: "index_members_on_league_id"
    t.index ["user_id"], name: "index_members_on_user_id"
  end

  create_table "points", force: :cascade do |t|
    t.integer "points"
    t.bigint "user_id"
    t.bigint "sprint_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "fine_id"
    t.index ["fine_id"], name: "index_points_on_fine_id"
    t.index ["sprint_id"], name: "index_points_on_sprint_id"
    t.index ["user_id"], name: "index_points_on_user_id"
  end

  create_table "sprints", force: :cascade do |t|
    t.string "title"
    t.datetime "deadline"
    t.string "meeting_point"
    t.bigint "league_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "active"
    t.index ["league_id"], name: "index_sprints_on_league_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "awards", "categories"
  add_foreign_key "fines", "categories"
  add_foreign_key "leagues", "categories"
  add_foreign_key "leagues", "users"
  add_foreign_key "members", "leagues"
  add_foreign_key "members", "users"
  add_foreign_key "points", "fines"
  add_foreign_key "points", "sprints"
  add_foreign_key "points", "users"
  add_foreign_key "sprints", "leagues"
end
