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

ActiveRecord::Schema.define(version: 20151208034303) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "foods", force: :cascade do |t|
    t.string   "name"
    t.string   "category"
    t.string   "flavor"
    t.string   "temperature"
    t.string   "tonifies"
    t.string   "regulates"
    t.string   "route"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "meals", force: :cascade do |t|
    t.boolean  "sweet"
    t.boolean  "salty"
    t.boolean  "pungent"
    t.boolean  "bitter"
    t.boolean  "sour"
    t.boolean  "grain"
    t.boolean  "meat_bean_dairy_nut"
    t.boolean  "vegetable_fruit"
    t.integer  "temperature"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "recommendations", force: :cascade do |t|
    t.boolean  "heavy"
    t.boolean  "phlegm"
    t.integer  "temp"
    t.boolean  "wandering_pains"
    t.boolean  "chills_and_fever"
    t.boolean  "foods_all"
    t.boolean  "foods_grains"
    t.boolean  "foods_vegetables"
    t.boolean  "foods_fruit"
    t.boolean  "foods_spices"
    t.boolean  "foods_oils"
    t.boolean  "foods_beverages"
    t.boolean  "foods_supplements"
    t.boolean  "foods_beans"
    t.boolean  "foods_nuts"
    t.boolean  "foods_fish"
    t.boolean  "foods_meat"
    t.boolean  "foods_dairy"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.boolean  "admin",           default: false
    t.string   "password_digest"
    t.boolean  "diagnosed",       default: false
    t.date     "current_login"
    t.date     "last_login"
  end

end
