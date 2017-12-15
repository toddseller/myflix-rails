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

ActiveRecord::Schema.define(version: 20170814034514) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "pgcrypto"

  create_table "catalogs", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.integer "count", default: 0, null: false
    t.string "poster", default: "", null: false
    t.string "slug"
    t.string "sort_name", default: "", null: false
    t.string "title", default: "", null: false
    t.integer "tmdb_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_catalogs_on_slug"
    t.index ["tmdb_id"], name: "index_catalogs_on_tmdb_id"
  end

  create_table "movies", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.text "actors", default: ""
    t.string "backdrop", default: ""
    t.string "director", default: ""
    t.string "display_title", default: ""
    t.string "file_name", default: ""
    t.string "folder_path", default: ""
    t.string "genre", default: ""
    t.boolean "hd", default: true
    t.string "movie_rating", default: ""
    t.boolean "new", default: true
    t.text "plot", default: ""
    t.string "poster", default: ""
    t.string "producer", default: ""
    t.string "runtime", default: ""
    t.string "search_name", default: ""
    t.string "slug"
    t.string "sort_name", default: ""
    t.string "studio", default: ""
    t.string "title", default: "", null: false
    t.integer "tmdb_id"
    t.uuid "user_id"
    t.string "writer", default: ""
    t.string "year", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["display_title"], name: "index_movies_on_display_title"
    t.index ["slug"], name: "index_movies_on_slug"
    t.index ["user_id"], name: "index_movies_on_user_id"
  end

  create_table "ratings", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "catalog_id"
    t.uuid "user_id"
    t.integer "stars"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["catalog_id"], name: "index_ratings_on_catalog_id"
    t.index ["user_id"], name: "index_ratings_on_user_id"
  end

  create_table "users", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.boolean "append_year", default: false, null: false
    t.string "first_name", default: "", null: false
    t.boolean "folder", default: false, null: false
    t.boolean "linked", default: false, null: false
    t.string "last_name", default: "", null: false
    t.string "root_path", default: ""
    t.string "slug"
    t.string "theme", default: "default"
    t.string "user_name", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["slug"], name: "index_users_on_slug"
    t.index ["user_name"], name: "index_users_on_user_name", unique: true
  end

end
