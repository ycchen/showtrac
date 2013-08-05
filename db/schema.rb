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

ActiveRecord::Schema.define(version: 20130805201751) do

  create_table "charges", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.string   "name"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.string   "mobile"
    t.string   "address"
    t.string   "city"
    t.string   "zipcode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dog_expenses", force: true do |t|
    t.integer  "dog_id"
    t.integer  "charge_id"
    t.date     "charge_date"
    t.decimal  "amount",        precision: 8, scale: 2, default: 0.0
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "show_entry_id"
  end

  add_index "dog_expenses", ["charge_id"], name: "index_dog_expenses_on_charge_id"
  add_index "dog_expenses", ["dog_id"], name: "index_dog_expenses_on_dog_id"
  add_index "dog_expenses", ["show_entry_id"], name: "index_dog_expenses_on_show_entry_id"

  create_table "dogs", force: true do |t|
    t.string   "name"
    t.string   "call_name"
    t.date     "birthday"
    t.string   "sex"
    t.string   "registration_no"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payment_types", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payments", force: true do |t|
    t.integer  "sale_id"
    t.integer  "payment_type_id"
    t.date     "payment_date"
    t.decimal  "amount",          precision: 8, scale: 2, default: 0.0
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sales", force: true do |t|
    t.integer  "dog_id"
    t.integer  "customer_id"
    t.date     "sale_date"
    t.decimal  "sale_price",  precision: 8, scale: 2, default: 0.0
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sales", ["customer_id"], name: "index_sales_on_customer_id"
  add_index "sales", ["dog_id"], name: "index_sales_on_dog_id"

  create_table "show_entries", force: true do |t|
    t.integer  "dog_id"
    t.integer  "show_id"
    t.decimal  "entry_fee",    precision: 8, scale: 2, default: 0.0
    t.decimal  "handling_fee", precision: 8, scale: 2, default: 0.0
    t.integer  "points"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "show_date"
    t.decimal  "expense",      precision: 8, scale: 2, default: 0.0
    t.string   "reg_class"
    t.string   "judge"
  end

  add_index "show_entries", ["dog_id"], name: "index_show_entries_on_dog_id"
  add_index "show_entries", ["show_id"], name: "index_show_entries_on_show_id"

  create_table "shows", force: true do |t|
    t.string   "name"
    t.string   "kennel_club"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
