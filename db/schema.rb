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

ActiveRecord::Schema.define(version: 20200811073415) do

  create_table "card_cond_tags", force: :cascade do |t|
    t.integer "count", default: 0, null: false
    t.integer "tag_id"
    t.integer "card_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_id"], name: "index_card_cond_tags_on_card_id"
    t.index ["tag_id"], name: "index_card_cond_tags_on_tag_id"
  end

  create_table "card_tags", force: :cascade do |t|
    t.integer "count", default: 1, null: false
    t.integer "tag_id"
    t.integer "card_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_id"], name: "index_card_tags_on_card_id"
    t.index ["tag_id"], name: "index_card_tags_on_tag_id"
  end

  create_table "cards", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.text "detail"
    t.integer "cost", default: 0, null: false
    t.integer "cond_kind"
    t.integer "cond_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string "name", null: false
    t.text "detail", null: false
    t.integer "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tag_id"], name: "index_companies_on_tag_id"
  end

  create_table "company_initial_resources", force: :cascade do |t|
    t.integer "yield", default: 0, null: false
    t.integer "property", default: 0, null: false
    t.integer "resource_id"
    t.integer "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_company_initial_resources_on_company_id"
    t.index ["resource_id"], name: "index_company_initial_resources_on_resource_id"
  end

  create_table "decks", force: :cascade do |t|
    t.integer "sort_index", null: false
    t.integer "card_id"
    t.integer "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_id"], name: "index_decks_on_card_id"
    t.index ["game_id"], name: "index_decks_on_game_id"
  end

  create_table "game_logs", force: :cascade do |t|
    t.text "log"
    t.boolean "show_on_playing", null: false
    t.integer "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_game_logs_on_game_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "name"
    t.integer "temperature", default: 0, null: false
    t.integer "oxygen", default: 0, null: false
    t.integer "sea", default: 0, null: false
    t.integer "round", default: 0, null: false
    t.integer "start_seat", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hands", force: :cascade do |t|
    t.integer "player_id"
    t.integer "card_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_id"], name: "index_hands_on_card_id"
    t.index ["player_id"], name: "index_hands_on_player_id"
  end

  create_table "played_cards", force: :cascade do |t|
    t.boolean "marker"
    t.integer "player_id"
    t.integer "card_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_id"], name: "index_played_cards_on_card_id"
    t.index ["player_id"], name: "index_played_cards_on_player_id"
  end

  create_table "player_resources", force: :cascade do |t|
    t.integer "yield", default: 0, null: false
    t.integer "property", default: 0, null: false
    t.integer "player_id"
    t.integer "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_player_resources_on_player_id"
    t.index ["resource_id"], name: "index_player_resources_on_resource_id"
  end

  create_table "players", force: :cascade do |t|
    t.integer "tr", default: 20, null: false
    t.boolean "marker"
    t.integer "seat"
    t.integer "user_id"
    t.integer "game_id"
    t.integer "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_players_on_company_id"
    t.index ["game_id"], name: "index_players_on_game_id"
    t.index ["user_id"], name: "index_players_on_user_id"
  end

  create_table "resources", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.integer "pay_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.integer "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resource_id"], name: "index_tags_on_resource_id"
  end

  create_table "tiles", force: :cascade do |t|
    t.integer "kind", default: 0, null: false
    t.integer "x", default: 0, null: false
    t.integer "y", default: 0, null: false
    t.integer "game_id"
    t.integer "player_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_tiles_on_game_id"
    t.index ["player_id"], name: "index_tiles_on_player_id"
  end

  create_table "tokens", force: :cascade do |t|
    t.integer "count", default: 0, null: false
    t.integer "game_id"
    t.integer "played_card_id"
    t.integer "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_tokens_on_game_id"
    t.index ["played_card_id"], name: "index_tokens_on_played_card_id"
    t.index ["resource_id"], name: "index_tokens_on_resource_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name"
    t.string "password"
    t.string "reset_password_token"
    t.string "reset_password_sent_at"
    t.string "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
