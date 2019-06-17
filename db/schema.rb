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

ActiveRecord::Schema.define(version: 20190617041140) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "archeries", force: :cascade do |t|
    t.text "list", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "arts", force: :cascade do |t|
    t.text "list", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bakings", force: :cascade do |t|
    t.text "list", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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
    t.integer "choir", default: 9
    t.boolean "isChoir", default: false
    t.integer "writing", default: 9
    t.boolean "isWrite", default: false
    t.integer "weaving", default: 9
    t.boolean "isWeave", default: false
    t.integer "painting", default: 9
    t.boolean "isPaint", default: false
    t.integer "sign", default: 9
    t.boolean "isSign", default: false
    t.integer "spanish", default: 9
    t.boolean "isSpan", default: false
    t.integer "talking", default: 9
    t.boolean "isTalk", default: false
    t.integer "notdance", default: 9
    t.boolean "isNotdance", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "grade", default: 1
    t.index ["name"], name: "index_campers_on_name", unique: true
  end

  create_table "campings", force: :cascade do |t|
    t.text "list", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "canoeings", force: :cascade do |t|
    t.text "list", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "choirs", force: :cascade do |t|
    t.text "list", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "crafts", force: :cascade do |t|
    t.text "list", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fishings", force: :cascade do |t|
    t.text "list", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.text "list", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "guitars", force: :cascade do |t|
    t.text "list", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hikings", force: :cascade do |t|
    t.text "list", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "links", force: :cascade do |t|
    t.boolean "on", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notdances", force: :cascade do |t|
    t.text "list", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "paintings", force: :cascade do |t|
    t.text "list", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "percussions", force: :cascade do |t|
    t.text "list", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "potteries", force: :cascade do |t|
    t.text "list", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reassigns", force: :cascade do |t|
    t.integer "campID", default: 0
    t.boolean "archery", default: false
    t.boolean "riflery", default: false
    t.boolean "canoeing", default: false
    t.boolean "baking", default: false
    t.boolean "camping", default: false
    t.boolean "rocks", default: false
    t.boolean "fishing", default: false
    t.boolean "hiking", default: false
    t.boolean "pottery", default: false
    t.boolean "arts", default: false
    t.boolean "percussion", default: false
    t.boolean "crafts", default: false
    t.boolean "games", default: false
    t.boolean "guitars", default: false
    t.boolean "choir", default: false
    t.boolean "writing", default: false
    t.boolean "weaving", default: false
    t.boolean "notdance", default: false
    t.boolean "painting", default: false
    t.boolean "sign", default: false
    t.boolean "spanish", default: false
    t.boolean "talking", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rifleries", force: :cascade do |t|
    t.text "list", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rocks", force: :cascade do |t|
    t.text "list", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.integer "slot", default: 0
    t.boolean "isArch", default: true
    t.boolean "isRif", default: true
    t.boolean "isCan", default: true
    t.boolean "isBake", default: true
    t.boolean "isCamp", default: true
    t.boolean "isRock", default: true
    t.boolean "isFish", default: true
    t.boolean "isHike", default: true
    t.boolean "isPot", default: true
    t.boolean "isArt", default: true
    t.boolean "isPer", default: true
    t.boolean "isCraft", default: true
    t.boolean "isGame", default: true
    t.boolean "isGuit", default: true
    t.boolean "isChoir", default: true
    t.boolean "isWrite", default: true
    t.boolean "isWeave", default: true
    t.boolean "isNotdance", default: true
    t.boolean "isPaint", default: true
    t.boolean "isSign", default: true
    t.boolean "isSpan", default: true
    t.boolean "isTalk", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "signs", force: :cascade do |t|
    t.text "list", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spanishes", force: :cascade do |t|
    t.text "list", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "talkings", force: :cascade do |t|
    t.text "list", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "uns", force: :cascade do |t|
    t.text "list", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "userName"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "reset_digest"
    t.datetime "reset_sent_at"
  end

  create_table "weavings", force: :cascade do |t|
    t.text "list", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "writings", force: :cascade do |t|
    t.text "list", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
