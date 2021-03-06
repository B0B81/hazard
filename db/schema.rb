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

ActiveRecord::Schema.define(version: 20170821162024) do

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dangersymbols", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "dangersymbols_substances", id: false, force: :cascade do |t|
    t.integer "dangersymbol_id", null: false
    t.integer "substance_id",    null: false
  end

  create_table "ghs_symbols", force: :cascade do |t|
    t.string   "title"
    t.string   "code"
    t.string   "description"
    t.string   "handling"
    t.string   "image"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "ghs_symbols_substances", id: false, force: :cascade do |t|
    t.integer "ghs_symbol_id", null: false
    t.integer "substance_id",  null: false
  end

  create_table "hazard_symbols", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.string   "image"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "code"
  end

  create_table "hazard_symbols_substances", id: false, force: :cascade do |t|
    t.integer "hazard_symbol_id", null: false
    t.integer "substance_id",     null: false
  end

  create_table "hphrases", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "hphrases_substances", id: false, force: :cascade do |t|
    t.integer "hphrase_id",   null: false
    t.integer "substance_id", null: false
  end

  create_table "pphrases", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "pphrases_substances", id: false, force: :cascade do |t|
    t.integer "pphrase_id",   null: false
    t.integer "substance_id", null: false
  end

  create_table "rphrases", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "rphrases_substances", id: false, force: :cascade do |t|
    t.integer "rphrase_id",   null: false
    t.integer "substance_id", null: false
  end

  create_table "substances", force: :cascade do |t|
    t.string   "title"
    t.integer  "company_id"
    t.date     "date"
    t.string   "application"
    t.string   "protectionlevel"
    t.string   "signalword"
    t.boolean  "inhalation"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "user_id"
    t.boolean  "dermale"
    t.string   "unnumber"
    t.string   "hazardcode"
    t.string   "classificationcode"
    t.string   "packinggroup"
    t.string   "hazardclass"
    t.string   "transportcategory"
    t.integer  "qmax"
    t.string   "datasheet_file_name"
    t.string   "datasheet_content_type"
    t.integer  "datasheet_file_size"
    t.datetime "datasheet_updated_at"
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.integer  "role"
    t.string   "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
