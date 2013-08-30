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

ActiveRecord::Schema.define(version: 20130829171002) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  create_table "leads", id: false, force: true do |t|
    t.uuid     "id",                              null: false
    t.uuid     "user",                            null: false
    t.uuid     "campaign"
    t.uuid     "assigned_to"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "title"
    t.string   "salutation"
    t.string   "company"
    t.string   "source"
    t.string   "state"
    t.string   "referred_by"
    t.string   "email"
    t.string   "blog"
    t.string   "linkedin"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "skype"
    t.integer  "rating"
    t.boolean  "do_not_call",     default: false
    t.datetime "deleted_at"
    t.text     "background_info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_accounts", id: false, force: true do |t|
    t.uuid     "id",                                  null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "authentication_token"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.uuid     "user"
  end

  add_index "user_accounts", ["authentication_token"], name: "index_user_accounts_on_authentication_token", unique: true, using: :btree
  add_index "user_accounts", ["confirmation_token"], name: "index_user_accounts_on_confirmation_token", unique: true, using: :btree
  add_index "user_accounts", ["email"], name: "index_user_accounts_on_email", unique: true, using: :btree
  add_index "user_accounts", ["reset_password_token"], name: "index_user_accounts_on_reset_password_token", unique: true, using: :btree
  add_index "user_accounts", ["unlock_token"], name: "index_user_accounts_on_unlock_token", unique: true, using: :btree

  create_table "users", id: false, force: true do |t|
    t.uuid   "id",         null: false
    t.string "first_name"
    t.string "last_name"
  end

end
