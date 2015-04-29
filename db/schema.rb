# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150427170544) do

  create_table "adminforms", force: :cascade do |t|
    t.string   "Name_of_student"
    t.boolean  "Gender"
    t.integer  "Class"
    t.datetime "Date_of_birth"
    t.string   "Category"
    t.string   "Nationality"
    t.string   "Father_name"
    t.string   "Mother_name"
    t.string   "Address_line_1"
    t.string   "Address_line2"
    t.string   "City"
    t.string   "State"
    t.integer  "Pin_code"
    t.string   "Email"
    t.integer  "Phone"
    t.string   "Father_occupation"
    t.string   "Highest_degree_1"
    t.integer  "Annual_income_1"
    t.string   "Mother_occupation"
    t.string   "Highest_degree_2"
    t.integer  "Annual_income_2"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "applications", force: :cascade do |t|
    t.string   "student_name"
    t.boolean  "gender"
    t.integer  "class"
    t.datetime "date_of_birth"
    t.string   "category"
    t.string   "nationality"
    t.string   "father_name"
    t.string   "mother_name"
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "city"
    t.string   "state"
    t.integer  "pin_code"
    t.string   "email"
    t.integer  "phone"
    t.string   "father_occupation"
    t.string   "highest_degree_1"
    t.integer  "annual_income_1"
    t.string   "mother_occupation"
    t.string   "highest_degree_2"
    t.integer  "annual_income_2"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "class_groups", force: :cascade do |t|
    t.string   "class_name"
    t.integer  "year"
    t.integer  "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "datafiles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notices", force: :cascade do |t|
    t.string   "titlt"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "stud_name"
    t.date     "stud_dob"
    t.boolean  "gender"
    t.text     "address"
    t.string   "email"
    t.string   "stud_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.integer  "teacher_id"
    t.text     "about_me"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "image"
  end

  create_table "timetables", force: :cascade do |t|
    t.string   "class_num"
    t.string   "day_ofweek"
    t.string   "subject_1"
    t.string   "subject_2"
    t.string   "subject_3"
    t.string   "subject_4"
    t.string   "subject_5"
    t.string   "subject_6"
    t.string   "subject_7"
    t.string   "subject_8"
    t.string   "subject_9"
    t.string   "subject_10"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.datetime "date_of_birth"
    t.boolean  "is_female",              default: false
    t.integer  "teacher_code"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
