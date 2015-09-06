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

ActiveRecord::Schema.define(version: 20150905235716) do

  create_table "holidays", force: true do |t|
    t.string   "name"
    t.date     "datev"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedules", force: true do |t|
    t.integer  "support_id"
    t.date     "dateshedule"
    t.string   "vacation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "schedules", ["support_id"], name: "index_schedules_on_support_id"

  create_table "supports", force: true do |t|
    t.string   "name"
    t.integer  "phn"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
