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

ActiveRecord::Schema.define(version: 20171002222912) do

  create_table "event_lists", force: true do |t|
    t.date     "eventDate"
    t.time     "eventTime"
    t.text     "eventName"
    t.text     "eventDescription"
    t.text     "streetAddress"
    t.text     "City"
    t.text     "State"
    t.text     "Zip"
    t.integer  "nbrOfRiders"
    t.text     "vehicleType"
    t.text     "PUstreetAddress"
    t.text     "PUCity"
    t.text     "PUState"
    t.text     "PUZip"
    t.boolean  "smokingAllowed"
    t.text     "createdBy"
    t.boolean  "eventDriver"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "new_users", force: :cascade do |t|
    t.string   "username",    limit: 255
    t.string   "email",       limit: 255
    t.boolean  "password"
    t.text     "state"
    t.text     "city"
    t.integer  "zip"
    t.text     "vehicleType"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",                    default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "username"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true

end
