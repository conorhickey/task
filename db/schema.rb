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

ActiveRecord::Schema.define(version: 20151117223614) do

  create_table "carts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gears", force: true do |t|
    t.string   "owner"
    t.string   "category"
    t.string   "brand"
    t.string   "model"
    t.string   "size"
    t.string   "description"
    t.string   "borrow"
    t.string   "selling"
    t.decimal  "price",       precision: 8, scale: 2
    t.text     "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "line_items", force: true do |t|
    t.integer  "gear_id"
    t.integer  "cart_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "line_items", ["cart_id"], name: "index_line_items_on_cart_id"
  add_index "line_items", ["gear_id"], name: "index_line_items_on_gear_id"

  create_table "members", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
