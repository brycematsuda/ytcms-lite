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

ActiveRecord::Schema.define(version: 20140806023539) do

  create_table "admins", force: true do |t|
    t.string   "email",           limit: 100, default: "", null: false
    t.string   "hashed_password", limit: 40
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email"

  create_table "admins_seasons", id: false, force: true do |t|
    t.integer "admin_id"
    t.integer "season_id"
  end

  add_index "admins_seasons", ["admin_id", "season_id"], name: "index_admins_seasons_on_admin_id_and_season_id"

  create_table "episodes", force: true do |t|
    t.integer  "season_id"
    t.string   "name"
    t.integer  "position"
    t.boolean  "visible",      default: false
    t.string   "content_type"
    t.text     "content"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "episodes", ["season_id"], name: "index_episodes_on_season_id"

  create_table "seasons", force: true do |t|
    t.integer  "show_id"
    t.string   "permalink"
    t.integer  "position"
    t.boolean  "visible",    default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "seasons", ["permalink"], name: "index_seasons_on_permalink"
  add_index "seasons", ["show_id"], name: "index_seasons_on_show_id"

  create_table "shows", force: true do |t|
    t.string   "name"
    t.integer  "position"
    t.boolean  "visible",    default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
