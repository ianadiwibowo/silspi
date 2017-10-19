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

ActiveRecord::Schema.define(version: 20171019120706) do

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

end
