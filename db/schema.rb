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

ActiveRecord::Schema.define(version: 20190514222215) do

  create_table "campers", force: :cascade do |t|
    t.string "name"
    t.integer "archery", default: 9
    t.boolean "isArch", default: false
    t.integer "riflery", default: 9
    t.boolean "isRif", default: false
    t.integer "canoeing", default: 9
    t.boolean "isCan", default: false
    t.integer "baking", default: 9
    t.boolean "isBake", default: false
    t.integer "camping", default: 9
    t.boolean "isCamp", default: false
    t.integer "rocks", default: 9
    t.boolean "isRock", default: false
    t.integer "fishing", default: 9
    t.boolean "isFish", default: false
    t.integer "hiking", default: 9
    t.boolean "isHike", default: false
    t.integer "pottery", default: 9
    t.boolean "isPot", default: false
    t.integer "arts", default: 9
    t.boolean "isArt", default: false
    t.integer "percussion", default: 9
    t.boolean "isPer", default: false
    t.integer "crafts", default: 9
    t.boolean "isCraft", default: false
    t.integer "games", default: 9
    t.boolean "isGame", default: false
    t.integer "guitars", default: 9
    t.boolean "isGuit", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_campers_on_name", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "userName"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end