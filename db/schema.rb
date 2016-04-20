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

ActiveRecord::Schema.define(version: 20160420201445) do

  create_table "debts", force: :cascade do |t|
    t.decimal  "amount",               precision: 8, scale: 2
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.integer  "from_id",    limit: 4
    t.integer  "to_id",      limit: 4
  end

  create_table "groups", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "participants", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "surname",    limit: 255
    t.integer  "group_id",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "participants", ["group_id"], name: "index_participants_on_group_id", using: :btree

  add_foreign_key "participants", "groups"
end
