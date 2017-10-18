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

ActiveRecord::Schema.define(version: 20171017190856) do

  create_table "event_lists", force: :cascade do |t|
    t.date     "eventDate"
    t.time     "eventTime"
    t.text     "eventName"
    t.text     "eventDescription"
    t.text     "streetAddress"
    t.text     "City"
    t.text     "State"
    t.text     "Zip"
    t.integer  "nbrOfRiders"
    t.integer  "vehicle_id"
    t.text     "PUstreetAddress"
    t.text     "PUCity"
    t.text     "PUState"
    t.text     "PUZip"
    t.boolean  "smokingAllowed"
    t.integer  "user_id"
    t.boolean  "eventDriver"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "first_name"
    t.text     "last_name"
    t.integer  "age"
    t.text     "street_address"
    t.text     "city"
    t.text     "state"
    t.text     "zip"
    t.boolean  "smoker"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "acct_type"
    t.string   "phone_number"
  end

  create_table "ride_requests", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "event_id"
    t.string   "confirmed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", id: false, force: :cascade do |t|
    t.string "state_code", null: false
    t.string "state_name"
  end

  add_index "states", ["state_code"], name: "index_states_on_state_code", unique: true

  create_table "user_vehicles", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "vehicleType"
    t.text     "vehicleColor"
    t.integer  "maxRider"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "username"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email"
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end