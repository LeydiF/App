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

ActiveRecord::Schema.define(version: 20160317221007) do

  create_table "courses", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "codigo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estudiantes", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.integer  "identificacion"
    t.string   "asignaturas"
    t.string   "email"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "estudiantes_subjects", id: false, force: :cascade do |t|
    t.integer "estudiante_id"
    t.integer "subject_id"
  end

  create_table "respuesta", force: :cascade do |t|
    t.string   "mensaje"
    t.float    "calificacion"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "codigo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tareas", force: :cascade do |t|
    t.string   "enunciado"
    t.datetime "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.integer  "identificacion"
    t.string   "asignatura"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "name"
    t.string   "username"
    t.text     "description"
    t.string   "avatar"
    t.integer  "role"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
