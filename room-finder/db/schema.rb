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

ActiveRecord::Schema.define(version: 20151203151422) do

  create_table "apartments", force: :cascade do |t|
    t.integer  "floor"
    t.integer  "room"
    t.float    "price"
    t.text     "description"
    t.boolean  "isVacant"
    t.integer  "Apt_complex_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "apartments", ["Apt_complex_id"], name: "index_apartments_on_Apt_complex_id"

  create_table "apt_complexes", force: :cascade do |t|
    t.string   "street"
    t.text     "description"
    t.integer  "floors"
    t.integer  "City_id"
    t.integer  "Company_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "apt_complexes", ["City_id"], name: "index_apt_complexes_on_City_id"
  add_index "apt_complexes", ["Company_id"], name: "index_apt_complexes_on_Company_id"

  create_table "cities", force: :cascade do |t|
    t.string   "state"
    t.integer  "population"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "City_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "companies", ["City_id"], name: "index_companies_on_City_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "gender"
    t.boolean  "isAdmin"
    t.integer  "Company_id"
    t.integer  "City_id"
    t.integer  "Apartment_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "users", ["Apartment_id"], name: "index_users_on_Apartment_id"
  add_index "users", ["City_id"], name: "index_users_on_City_id"
  add_index "users", ["Company_id"], name: "index_users_on_Company_id"

end
