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

ActiveRecord::Schema.define(version: 2018_12_04_092913) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "logo"
  end

  create_table "courses_users", id: false, force: :cascade do |t|
    t.bigint "course_id"
    t.bigint "user_id"
    t.index ["course_id"], name: "index_courses_users_on_course_id"
    t.index ["user_id"], name: "index_courses_users_on_user_id"
  end

  create_table "docs", force: :cascade do |t|
    t.string "file"
    t.bigint "lesson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_docs_on_lesson_id"
  end

  create_table "lessons", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.bigint "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_lessons_on_course_id"
  end

  create_table "states", force: :cascade do |t|
    t.bigint "lesson_id"
    t.bigint "user_id"
    t.integer "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_states_on_lesson_id"
    t.index ["user_id"], name: "index_states_on_user_id"
  end

  create_table "statuses", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "lesson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status"
    t.index ["lesson_id"], name: "index_statuses_on_lesson_id"
    t.index ["user_id"], name: "index_statuses_on_user_id"
  end

  create_table "user_docs", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "lesson_id"
    t.string "file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_user_docs_on_lesson_id"
    t.index ["user_id"], name: "index_user_docs_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "status", default: 0
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_courses", force: :cascade do |t|
    t.bigint "users_id"
    t.bigint "courses_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["courses_id"], name: "index_users_courses_on_courses_id"
    t.index ["users_id"], name: "index_users_courses_on_users_id"
  end

  add_foreign_key "docs", "lessons"
  add_foreign_key "lessons", "courses"
  add_foreign_key "states", "lessons"
  add_foreign_key "states", "users"
  add_foreign_key "statuses", "lessons"
  add_foreign_key "statuses", "users"
  add_foreign_key "user_docs", "lessons"
  add_foreign_key "user_docs", "users"
end
