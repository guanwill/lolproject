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

ActiveRecord::Schema.define(version: 20160531043227) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string   "name"
    t.string   "lol_username"
    t.string   "state"
    t.string   "fav_champion"
    t.string   "fav_position"
    t.string   "fav_gamemode"
    t.string   "fav_item"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "email"
    t.string   "password_digest"
  end

  create_table "runes_lists", force: :cascade do |t|
    t.integer  "rune_id"
    t.string   "rune_name"
    t.string   "rune_description"
    t.string   "rune_image"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
