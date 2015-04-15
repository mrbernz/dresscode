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

ActiveRecord::Schema.define(version: 20150415184416) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "outfits", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "top_id"
    t.integer  "pant_id"
    t.integer  "shoe_id"
    t.integer  "count"
    t.integer  "user_id"
  end

  create_table "pants", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "count"
    t.text     "category"
    t.text     "contents"
    t.text     "image"
    t.text     "season"
    t.integer  "user_id"
  end

  create_table "queue_classic_jobs", force: :cascade do |t|
    t.string   "q_name"
    t.string   "method"
    t.text     "args"
    t.datetime "locked_at"
    t.datetime "created_at",   default: "now()"
    t.integer  "locked_by"
    t.datetime "scheduled_at", default: "now()"
  end

  add_index "queue_classic_jobs", ["id"], name: "index_queue_classic_jobs_on_id", using: :btree
  add_index "queue_classic_jobs", ["scheduled_at", "id"], name: "idx_qc_on_scheduled_at_only_unlocked", where: "(locked_at IS NULL)", using: :btree

  create_table "shoes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "count"
    t.text     "category"
    t.text     "contents"
    t.text     "image"
    t.text     "season"
    t.integer  "user_id"
  end

  create_table "tops", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "count"
    t.text     "category"
    t.text     "contents"
    t.text     "image"
    t.text     "season"
    t.integer  "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.text     "first_name"
    t.text     "last_name"
    t.text     "email"
    t.text     "password_digest"
  end

  add_foreign_key "outfits", "pants"
  add_foreign_key "outfits", "shoes"
  add_foreign_key "outfits", "tops"
  add_foreign_key "outfits", "users"
  add_foreign_key "pants", "users"
  add_foreign_key "shoes", "users"
  add_foreign_key "tops", "users"
end
