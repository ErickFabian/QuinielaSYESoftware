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

ActiveRecord::Schema.define(version: 20141013150805) do

  create_table "choices", force: true do |t|
    t.integer  "user_id"
    t.integer  "game_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "result_cd"
  end

  create_table "games", force: true do |t|
    t.string   "local"
    t.string   "visitor"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "date"
    t.integer  "quiniela_id"
    t.integer  "result_cd"
  end

  add_index "games", ["quiniela_id"], name: "index_games_on_quiniela_id"

  create_table "quinielas", force: true do |t|
    t.string   "name"
    t.date     "start_at"
    t.date     "end_at"
    t.integer  "cost"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quinielas_users", id: false, force: true do |t|
    t.integer "quiniela_id", null: false
    t.integer "user_id",     null: false
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
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
    t.string   "cellphone"
    t.string   "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
