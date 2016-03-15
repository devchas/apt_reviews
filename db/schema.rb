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

ActiveRecord::Schema.define(version: 20160314221651) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.integer "review_id"
    t.integer "review_question_id"
    t.boolean "response"
  end

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
  end

  create_table "reviews", force: :cascade do |t|
    t.string  "description"
    t.integer "apartment_id",  null: false
    t.string  "title"
    t.integer "overal_rating"
    t.integer "user_id"
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
