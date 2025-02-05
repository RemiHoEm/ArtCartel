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

ActiveRecord::Schema[7.1].define(version: 2024_12_17_153238) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "artworks", force: :cascade do |t|
    t.string "name"
    t.string "artist"
    t.float "longitude"
    t.float "latitude"
    t.integer "creation_date"
    t.string "dimensions"
    t.string "materials"
    t.string "info_link"
    t.string "attribution_licence"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "average_score"
  end

  create_table "artworks_categories", force: :cascade do |t|
    t.bigint "category_id", null: false
    t.bigint "artwork_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artwork_id"], name: "index_artworks_categories_on_artwork_id"
    t.index ["category_id"], name: "index_artworks_categories_on_category_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "theme"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "challenges", force: :cascade do |t|
    t.string "artist"
    t.float "longitude"
    t.float "latitude"
    t.integer "creation_date"
    t.float "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "users_game_id", null: false
    t.bigint "games_artwork_id", null: false
    t.float "time_score"
    t.float "geo_score"
    t.float "artist_score"
    t.index ["games_artwork_id"], name: "index_challenges_on_games_artwork_id"
    t.index ["users_game_id"], name: "index_challenges_on_users_game_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "invitation_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games_artworks", force: :cascade do |t|
    t.integer "position"
    t.bigint "game_id", null: false
    t.bigint "artwork_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artwork_id"], name: "index_games_artworks_on_artwork_id"
    t.index ["game_id"], name: "index_games_artworks_on_game_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_games", force: :cascade do |t|
    t.bigint "game_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_users_games_on_game_id"
    t.index ["user_id"], name: "index_users_games_on_user_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "artworks_categories", "artworks"
  add_foreign_key "artworks_categories", "categories"
  add_foreign_key "challenges", "games_artworks"
  add_foreign_key "challenges", "users_games"
  add_foreign_key "games_artworks", "artworks"
  add_foreign_key "games_artworks", "games"
  add_foreign_key "users_games", "games"
  add_foreign_key "users_games", "users"
end
