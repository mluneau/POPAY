# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_23_154852) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.date "meeting_date"
    t.bigint "employee_id", null: false
    t.bigint "hr_id", null: false
    t.string "status_meeting_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_id"], name: "index_appointments_on_employee_id"
    t.index ["hr_id"], name: "index_appointments_on_hr_id"
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.string "category"
    t.date "date"
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "bank_accounts", force: :cascade do |t|
    t.string "bank_name"
    t.string "bank_address"
    t.string "iban"
    t.string "swift"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_bank_accounts_on_user_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.integer "number_of_employees"
    t.bigint "subscription_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["subscription_id"], name: "index_companies_on_subscription_id"
  end

  create_table "discussions", force: :cascade do |t|
    t.bigint "employee_id", null: false
    t.bigint "hr_id", null: false
    t.string "topic"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_id"], name: "index_discussions_on_employee_id"
    t.index ["hr_id"], name: "index_discussions_on_hr_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "content"
    t.bigint "discussion_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["discussion_id"], name: "index_messages_on_discussion_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.string "name"
    t.integer "monthly_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.integer "amount"
    t.date "due_date"
    t.string "status"
    t.date "transfer_date"
    t.bigint "user_id", null: false
    t.bigint "bank_account_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bank_account_id"], name: "index_transactions_on_bank_account_id"
    t.index ["user_id"], name: "index_transactions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "position"
    t.integer "annual_income"
    t.bigint "company_id", null: false
    t.string "first_name"
    t.string "last_name"
    t.index ["company_id"], name: "index_users_on_company_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "appointments", "users", column: "employee_id"
  add_foreign_key "appointments", "users", column: "hr_id"
  add_foreign_key "bank_accounts", "users"
  add_foreign_key "companies", "subscriptions"
  add_foreign_key "discussions", "users", column: "employee_id"
  add_foreign_key "discussions", "users", column: "hr_id"
  add_foreign_key "messages", "discussions"
  add_foreign_key "messages", "users"
  add_foreign_key "transactions", "bank_accounts"
  add_foreign_key "transactions", "users"
  add_foreign_key "users", "companies"
end
