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

ActiveRecord::Schema.define(version: 20181027163442) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "additions", force: :cascade do |t|
    t.string "name", null: false
    t.integer "score", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dose_methods", force: :cascade do |t|
    t.string "number_of_doses"
    t.string "take_point", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favorite_pharmacies", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "pharmacy_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medicines", force: :cascade do |t|
    t.string "original_price"
    t.string "generic_price"
    t.string "classification"
    t.string "usage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "code", null: false
    t.string "name", null: false
    t.string "standard", null: false
  end

  create_table "pharmacies", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "pharmacy_code", null: false
    t.string "name", null: false
    t.string "postal", null: false
    t.string "address", null: false
    t.string "tel", null: false
    t.integer "addition_sum", default: 0, null: false
  end

  create_table "pharmacy_additions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "pharmacy_id", null: false
    t.integer "addition_id", null: false
  end

  create_table "pharmacy_users", force: :cascade do |t|
    t.string "name", null: false
    t.integer "password_digest", null: false
    t.integer "pharmacy_code", null: false
    t.integer "pharmacy_id", null: false
    t.string "tel", null: false
    t.string "fax"
    t.string "email", null: false
    t.string "image"
    t.string "movie"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prescription_medicines", force: :cascade do |t|
    t.integer "prescription_id", null: false
    t.integer "medicine_id", null: false
    t.integer "dose", null: false
    t.integer "dose_method_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "date"
  end

  create_table "prescriptions", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "number_of_medicine", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.integer "password_digest", null: false
    t.string "email", null: false
    t.string "birthday", null: false
    t.string "postal", null: false
    t.string "address", null: false
    t.string "tel", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
