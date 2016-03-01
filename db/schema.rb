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

ActiveRecord::Schema.define(version: 0) do

  create_table "class", force: :cascade do |t|
    t.string  "name",      limit: 45
    t.integer "grades_id", limit: 4,  null: false
  end

  add_index "class", ["grades_id"], name: "fk_classes_grades1_idx", using: :btree
  add_index "class", ["name"], name: "name_UNIQUE", unique: true, using: :btree

  create_table "comment", id: false, force: :cascade do |t|
    t.integer  "id",         limit: 4,  null: false
    t.string   "content",    limit: 45, null: false
    t.datetime "created_at",            null: false
    t.integer  "user_id",    limit: 4,  null: false
    t.integer  "lesson_id",  limit: 4,  null: false
  end

  add_index "comment", ["lesson_id"], name: "fk_comments_lessons1_idx", using: :btree
  add_index "comment", ["user_id"], name: "fk_comments_users1_idx", using: :btree

  create_table "grade", force: :cascade do |t|
    t.string "name", limit: 45
  end

  add_index "grade", ["name"], name: "name_UNIQUE", unique: true, using: :btree

  create_table "lessons", id: false, force: :cascade do |t|
    t.integer  "id",         limit: 4,                   null: false
    t.string   "name",       limit: 20,                  null: false
    t.string   "url",        limit: 200,                 null: false
    t.datetime "created_at",                             null: false
    t.boolean  "approved",   limit: 1,   default: false, null: false
    t.string   "type",       limit: 45
    t.integer  "class_id",   limit: 4,                   null: false
    t.integer  "user_id",    limit: 4,                   null: false
  end

  add_index "lessons", ["class_id"], name: "fk_lessons_classes1_idx", using: :btree
  add_index "lessons", ["user_id"], name: "fk_lessons_users1_idx", using: :btree

  create_table "role", force: :cascade do |t|
    t.string "role", limit: 45
  end

  create_table "users", force: :cascade do |t|
    t.string "username",        limit: 20,  null: false
    t.string "password_digest", limit: 255
    t.string "remember_digest", limit: 255
    t.string "name",            limit: 50,  null: false
    t.string "email",           limit: 45,  null: false
  end

  add_index "users", ["email"], name: "email_UNIQUE", unique: true, using: :btree
  add_index "users", ["username"], name: "username_UNIQUE", unique: true, using: :btree

  create_table "user_has_role", id: false, force: :cascade do |t|
    t.integer "role_id", limit: 4, null: false
    t.integer "user_id", limit: 4, null: false
  end

  add_index "user_has_role", ["role_id"], name: "fk_roles_has_users_roles1_idx", using: :btree
  add_index "user_has_role", ["user_id"], name: "fk_roles_has_users_users1_idx", using: :btree

  add_foreign_key "class", "grade", column: "grades_id", name: "fk_classes_grades1"
  add_foreign_key "comment", "lessons", name: "fk_comments_lessons1"
  add_foreign_key "comment", "users", name: "fk_comments_users1"
  add_foreign_key "lessons", "class", name: "fk_lessons_classes1"
  add_foreign_key "lessons", "users", name: "fk_lessons_users1"
  add_foreign_key "user_has_role", "role", name: "fk_roles_has_users_roles1"
  add_foreign_key "user_has_role", "users", name: "fk_roles_has_users_users1"
end
