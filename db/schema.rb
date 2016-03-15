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

ActiveRecord::Schema.define(version: 20160312234828) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "apartments", force: :cascade do |t|
    t.string "street_address"
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "zip"
  end

  create_table "review_questions", force: :cascade do |t|
    t.string "question"
    t.string "method"
    t.string "category"
    t.string "response"
  end

  create_table "reviews", force: :cascade do |t|
    t.string  "description"
    t.integer "apartment_id",          null: false
    t.string  "title"
    t.integer "overal_rating"
    t.integer "user_id"
    t.boolean "transportation_access"
    t.boolean "safe"
    t.boolean "fun_area"
    t.boolean "delivery"
    t.boolean "dining"
    t.boolean "noise_outside"
    t.boolean "noise_neighbors"
    t.boolean "appliances"
    t.boolean "mgmt_reliability"
    t.boolean "bldg_clean"
    t.boolean "construction"
    t.boolean "mgmt_accomodate"
    t.boolean "heating"
    t.boolean "cooling"
    t.boolean "hot_water_lasts"
    t.boolean "long_to_heat_water"
    t.boolean "shower_pressure"
    t.boolean "toilet_clogs"
    t.boolean "closet_space"
    t.boolean "pests"
  end

  add_index "reviews", ["apartment_id"], name: "index_reviews_on_apartment_id", using: :btree

  create_table "signups", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "street"
    t.string "apt_num"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.string "rent_or_buy"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
  end

  add_foreign_key "reviews", "apartments"
end
