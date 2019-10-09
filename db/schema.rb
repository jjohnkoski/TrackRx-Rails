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

ActiveRecord::Schema.define(version: 2019_10_09_223227) do

  create_table "classifications", force: :cascade do |t|
    t.integer "medicine_id"
    t.integer "type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["medicine_id"], name: "index_classifications_on_medicine_id"
    t.index ["type_id"], name: "index_classifications_on_type_id"
  end

  create_table "medicines", force: :cascade do |t|
    t.string "name"
    t.string "dose"
    t.integer "rx_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "rx_number2"
    t.integer "user_id"
  end

  create_table "takes", force: :cascade do |t|
    t.integer "medicine_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["medicine_id"], name: "index_takes_on_medicine_id"
    t.index ["user_id"], name: "index_takes_on_user_id"
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
  end

end
