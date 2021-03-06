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

ActiveRecord::Schema.define(version: 20150507044926) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "billboard_dates", force: :cascade do |t|
    t.string   "day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "songs", force: :cascade do |t|
    t.text     "lyrics"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "name"
    t.string   "artist"
    t.string   "date"
    t.integer  "billboard_date_id"
    t.integer  "year"
  end

  add_index "songs", ["billboard_date_id"], name: "index_songs_on_billboard_date_id", using: :btree

  create_table "year_objs", force: :cascade do |t|
    t.integer  "num"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "murder"
    t.integer  "stab"
    t.integer  "kill"
    t.integer  "steal"
    t.integer  "rape"
    t.integer  "thug"
    t.integer  "trigger"
    t.integer  "gang"
    t.integer  "gun"
    t.integer  "total"
    t.integer  "shoot"
  end

  add_foreign_key "songs", "billboard_dates"
end
