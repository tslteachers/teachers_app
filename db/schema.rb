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

ActiveRecord::Schema.define(version: 20130729203426) do

  create_table "colleges", force: true do |t|
    t.string "name"
    t.string "address1"
    t.string "address2"
    t.string "city"
    t.string "state"
    t.string "zip"
  end

  create_table "concentrations", force: true do |t|
    t.integer "teacher_id"
    t.integer "subject_id"
  end

  create_table "courses", force: true do |t|
    t.integer "subject_id"
    t.string  "location"
    t.string  "time"
    t.string  "compensation"
    t.string  "qualifications"
    t.integer "college_id"
    t.text    "description"
  end

  create_table "interests", force: true do |t|
    t.integer "teacher_id"
    t.integer "course_id"
  end

  create_table "subjects", force: true do |t|
    t.string "name"
  end

  create_table "teachers", force: true do |t|
    t.string "first_name"
    t.string "last_name"
    t.text   "bio"
    t.string "highest_degree"
    t.string "availability"
    t.string "email"
    t.string "phone"
  end

end
