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

ActiveRecord::Schema.define(version: 20171022173325) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assessors", force: :cascade do |t|
    t.string "license_number"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "idx_assessors_user"
  end

  create_table "certificates", force: :cascade do |t|
    t.string "serial_number"
    t.datetime "issue_date"
    t.datetime "expiration_date"
    t.bigint "certification_assessment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["certification_assessment_id"], name: "idx_certificates_certification_assessment"
  end

  create_table "certification_assessments", force: :cascade do |t|
    t.datetime "schedule"
    t.integer "status"
    t.text "assessor_comment"
    t.bigint "student_id"
    t.bigint "certification_registration_id"
    t.bigint "certification_scheme_id"
    t.bigint "certification_provider_id"
    t.bigint "assessor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assessor_id"], name: "idx_certification_assessments_assessor"
    t.index ["certification_provider_id"], name: "idx_certification_assessments_certification_provider"
    t.index ["certification_registration_id"], name: "idx_certification_assessments_certification_registration"
    t.index ["certification_scheme_id"], name: "idx_certification_assessments_certification_scheme"
    t.index ["student_id"], name: "idx_certification_assessments_student"
  end

  create_table "certification_providers", force: :cascade do |t|
    t.string "name"
    t.string "legal_entity_name"
    t.string "profile_photo"
    t.text "address"
    t.string "postal_code"
    t.string "city"
    t.string "latitude"
    t.string "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "certification_registrations", force: :cascade do |t|
    t.text "registration_notes"
    t.integer "status"
    t.bigint "student_id"
    t.bigint "lsp_admin_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lsp_admin_id"], name: "idx_certification_registrations_lsp_admin"
    t.index ["student_id"], name: "idx_certification_registrations_student"
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
    t.bigint "certification_scheme_id"
    t.integer "display_order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["certification_scheme_id"], name: "idx_competency_units_certification_scheme"
  end

  create_table "lsp_admins", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "idx_lsp_admins_user"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "status"
    t.datetime "review_date"
    t.text "comment"
    t.bigint "certification_assessment_id"
    t.bigint "assessor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["assessor_id"], name: "idx_reviews_assessor"
    t.index ["certification_assessment_id"], name: "idx_reviews_certification_assessment"
  end

  create_table "settings", force: :cascade do |t|
    t.string "company_name"
    t.string "company_logo"
    t.text "company_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "student_number"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "idx_students_user"
  end

  create_table "supporting_documents", force: :cascade do |t|
    t.string "title"
    t.bigint "certification_registration_id"
    t.integer "document_type"
    t.text "description"
    t.string "file"
    t.integer "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["certification_registration_id"], name: "idx_supporting_documents_certification_registration"
  end

  create_table "technical_committees", force: :cascade do |t|
    t.string "license_number"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "idx_technical_committees_user"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "name"
    t.string "password_hash"
    t.string "profile_photo"
    t.string "national_id_number"
    t.integer "gender"
    t.datetime "birthday"
    t.text "address"
    t.boolean "system_admin"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
