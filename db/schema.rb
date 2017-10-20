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

ActiveRecord::Schema.define(version: 20171019141306) do

  create_table "assessors", force: :cascade do |t|
    t.string "license_number"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_assessors_on_user_id"
  end

  create_table "certification_schemes", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.integer "scheme_type"
    t.float "certification_fee"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "competency_units", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.integer "certification_scheme_id"
    t.integer "display_order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["certification_scheme_id"], name: "index_competency_units_on_certification_scheme_id"
  end

  create_table "lsp_admins", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_lsp_admins_on_user_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "student_number"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_students_on_user_id"
  end

  create_table "technical_committees", force: :cascade do |t|
    t.string "license_number"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_technical_committees_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "name"
    t.string "password_hash"
    t.string "profile_photo_path"
    t.string "national_id_number"
    t.integer "gender"
    t.datetime "birthday"
    t.text "address"
    t.boolean "system_admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
