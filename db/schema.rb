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

ActiveRecord::Schema.define(version: 2021_03_31_195408) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "creatrixes", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_creatrixes_on_email", unique: true
    t.index ["reset_password_token"], name: "index_creatrixes_on_reset_password_token", unique: true
  end

  create_table "m_statements", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.bigint "tale_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tale_id"], name: "index_m_statements_on_tale_id"
  end

  create_table "tales", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.bigint "creatrix_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["creatrix_id"], name: "index_tales_on_creatrix_id"
  end

  create_table "what_ifs", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.bigint "tale_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tale_id"], name: "index_what_ifs_on_tale_id"
  end

end
