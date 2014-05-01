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

ActiveRecord::Schema.define(version: 20140430223028) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: true do |t|
    t.string "user_name"
    t.string "password"
  end

  create_table "blog_posts", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "location"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "event_codes", force: true do |t|
    t.string  "event_code"
    t.integer "date"
  end

  create_table "locations", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "national_parks", force: true do |t|
    t.string "image1"
    t.string "image2"
    t.string "name"
    t.string "description"
  end

  create_table "occasions", force: true do |t|
    t.string "image1"
    t.string "image2"
    t.string "category"
    t.string "sub_category"
    t.string "name"
    t.string "description"
  end

  create_table "pictures", force: true do |t|
    t.string "image1"
    t.string "image2"
    t.string "category"
    t.string "description"
  end

  create_table "titles", force: true do |t|
    t.string "name"
    t.text   "description"
  end

  create_table "viewers", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "event_code"
    t.datetime "updated_at"
  end

end
