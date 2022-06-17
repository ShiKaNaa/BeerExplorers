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

ActiveRecord::Schema.define(version: 2022_06_17_080157) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bars", force: :cascade do |t|
    t.string "address"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "beer_collection_of_bars", force: :cascade do |t|
    t.bigint "beer_id", null: false
    t.bigint "bar_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bar_id"], name: "index_beer_collection_of_bars_on_bar_id"
    t.index ["beer_id"], name: "index_beer_collection_of_bars_on_beer_id"
  end

  create_table "beerquests", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.bigint "beer_id", null: false
    t.integer "bar_id", default: 0, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bar_id"], name: "index_beerquests_on_bar_id"
    t.index ["beer_id"], name: "index_beerquests_on_beer_id"
    t.index ["user_id"], name: "index_beerquests_on_user_id"
  end

  create_table "beers", force: :cascade do |t|
    t.string "name"
    t.float "abv"
    t.integer "ibu"
    t.string "style"
    t.string "photo"
    t.string "country"
    t.string "hops"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "chatrooms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "beer_id"
    t.index ["beer_id"], name: "index_chatrooms_on_beer_id"
  end

  create_table "list_of_beers_for_beerquests", force: :cascade do |t|
    t.bigint "beerquest_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "beer_id"
    t.index ["beer_id"], name: "index_list_of_beers_for_beerquests_on_beer_id"
    t.index ["beerquest_id"], name: "index_list_of_beers_for_beerquests_on_beerquest_id"
  end

  create_table "meals", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "messages", force: :cascade do |t|
    t.string "content"
    t.bigint "chatroom_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["chatroom_id"], name: "index_messages_on_chatroom_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "note"
    t.bigint "user_id", null: false
    t.bigint "beer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["beer_id"], name: "index_ratings_on_beer_id"
    t.index ["user_id"], name: "index_ratings_on_user_id"
  end

  create_table "recommendations", force: :cascade do |t|
    t.bigint "meal_id", null: false
    t.bigint "beer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["beer_id"], name: "index_recommendations_on_beer_id"
    t.index ["meal_id"], name: "index_recommendations_on_meal_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "nickname"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "beer_collection_of_bars", "bars"
  add_foreign_key "beer_collection_of_bars", "beers"
  add_foreign_key "beerquests", "bars"
  add_foreign_key "beerquests", "beers"
  add_foreign_key "beerquests", "users"
  add_foreign_key "chatrooms", "beers"
  add_foreign_key "list_of_beers_for_beerquests", "beerquests"
  add_foreign_key "list_of_beers_for_beerquests", "beers"
  add_foreign_key "messages", "chatrooms"
  add_foreign_key "messages", "users"
  add_foreign_key "ratings", "beers"
  add_foreign_key "ratings", "users"
  add_foreign_key "recommendations", "beers"
  add_foreign_key "recommendations", "meals"
end
