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

ActiveRecord::Schema.define(version: 20140617110741) do

  create_table "companies", force: true do |t|
    t.integer  "company_id"
    t.string   "companyName"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "logins", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "company_id"
    t.integer  "usertype_id"
    t.string   "company_name"
  end

  add_index "logins", ["email"], name: "index_logins_on_email", unique: true
  add_index "logins", ["reset_password_token"], name: "index_logins_on_reset_password_token", unique: true

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.binary   "password"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "company_id"
    t.integer  "usertype_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usertypes", force: true do |t|
    t.integer  "usertype_id"
    t.string   "usertype_name"
    t.string   "can_create"
    t.string   "can_delete"
    t.string   "can_view"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
