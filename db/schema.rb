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

ActiveRecord::Schema.define(version: 2020_02_02_122822) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "area_users", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "area_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_area_users_on_area_id"
    t.index ["user_id"], name: "index_area_users_on_user_id"
  end

  create_table "areas", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.string "creator"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "members"
    t.date "d_day"
  end

  create_table "protocols", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "creator"
    t.string "submit_date"
    t.string "submitter"
    t.bigint "area_id"
    t.text "members"
    t.date "start"
    t.date "end"
    t.index ["area_id"], name: "index_protocols_on_area_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.text "content"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "protocol_id"
    t.boolean "checkbox", default: false
    t.string "priority"
    t.date "start"
    t.date "end"
    t.string "status"
    t.integer "budget"
    t.string "member"
    t.integer "link"
    t.index ["protocol_id"], name: "index_tasks_on_protocol_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "area_users", "areas"
  add_foreign_key "area_users", "users"
  add_foreign_key "protocols", "areas"
  add_foreign_key "tasks", "protocols"
end
