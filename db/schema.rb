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

ActiveRecord::Schema[7.1].define(version: 2024_07_23_164625) do
  create_table "advices", force: :cascade do |t|
    t.integer "user_id", null: false
    t.text "body"
    t.string "adviceable_type", null: false
    t.integer "adviceable_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["adviceable_type", "adviceable_id"], name: "index_advices_on_adviceable"
    t.index ["user_id"], name: "index_advices_on_user_id"
  end

  create_table "hotels", force: :cascade do |t|
    t.string "name"
    t.string "link"
    t.string "address"
    t.integer "stadium_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["stadium_id"], name: "index_hotels_on_stadium_id"
  end

  create_table "stadiums", force: :cascade do |t|
    t.string "name"
    t.string "team"
    t.string "latitude"
    t.string "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tailgates", force: :cascade do |t|
    t.string "location"
    t.string "name"
    t.integer "stadium_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["stadium_id"], name: "index_tailgates_on_stadium_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "advices", "users"
  add_foreign_key "hotels", "stadiums"
  add_foreign_key "tailgates", "stadiums"
end
