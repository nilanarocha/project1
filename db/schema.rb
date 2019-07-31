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

ActiveRecord::Schema.define(version: 2019_07_31_112722) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agents", force: :cascade do |t|
    t.text "name"
    t.text "email"
    t.text "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "image"
  end

  create_table "properties", force: :cascade do |t|
    t.text "address"
    t.text "description"
    t.text "location"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "agents_id"
    t.bigint "property_types_id"
    t.text "price"
    t.integer "bedroom"
    t.integer "bathroom"
    t.integer "car_space"
    t.index ["agents_id"], name: "index_properties_on_agents_id"
    t.index ["property_types_id"], name: "index_properties_on_property_types_id"
  end

  create_table "property_types", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "properties", "agents", column: "agents_id"
  add_foreign_key "properties", "property_types", column: "property_types_id"
end
