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

ActiveRecord::Schema[7.0].define(version: 2022_11_26_183759) do
  create_table "accounts", force: :cascade do |t|
    t.string "email"
    t.integer "kind"
    t.integer "console_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "accounts_games", id: false, force: :cascade do |t|
    t.integer "account_id", null: false
    t.integer "game_id", null: false
    t.index ["account_id", "game_id"], name: "index_accounts_games_on_account_id_and_game_id"
    t.index ["game_id", "account_id"], name: "index_accounts_games_on_game_id_and_account_id"
  end

  create_table "consoles", force: :cascade do |t|
    t.integer "kind"
    t.string "name"
    t.date "purchase_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.string "title"
    t.integer "console_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rentals", force: :cascade do |t|
    t.integer "user_id"
    t.integer "console_id"
    t.datetime "checked_out"
    t.datetime "returned"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subscriptions", force: :cascade do |t|
    t.integer "kind"
    t.integer "account_id"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
