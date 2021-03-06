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

ActiveRecord::Schema.define(version: 20161215091115) do

  create_table "configs", force: :cascade do |t|
    t.text     "config"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "device_id"
    t.index ["device_id"], name: "index_configs_on_device_id"
  end

  create_table "connection_profiles", force: :cascade do |t|
    t.text     "username"
    t.text     "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "name"
  end

  create_table "devices", force: :cascade do |t|
    t.text     "hostname"
    t.text     "ip"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "connection_profile_id"
    t.index ["connection_profile_id"], name: "index_devices_on_connection_profile_id"
  end

end
