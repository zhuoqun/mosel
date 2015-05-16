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

ActiveRecord::Schema.define(version: 20150513085327) do

  create_table "books", force: :cascade do |t|
    t.string   "name"
    t.string   "author"
    t.string   "ISBN"
    t.string   "publisher"
    t.datetime "pub_time"
    t.integer  "delete"
    t.string   "extra1"
    t.string   "extra2"
    t.string   "extra3"
    t.string   "extra4"
    t.string   "extra5"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clippings", force: :cascade do |t|
    t.string   "user_id"
    t.string   "book_id"
    t.string   "user_name"
    t.string   "book_name"
    t.string   "location"
    t.string   "page"
    t.string   "type"
    t.text     "content"
    t.datetime "add_time"
    t.integer  "delete"
    t.string   "extra1"
    t.string   "extra2"
    t.string   "extra3"
    t.string   "extra4"
    t.string   "extra5"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "collections", force: :cascade do |t|
    t.string   "user_id"
    t.string   "name"
    t.string   "desc"
    t.string   "user_name"
    t.integer  "delete"
    t.string   "extra1"
    t.string   "extra2"
    t.string   "extra3"
    t.string   "extra4"
    t.string   "extra5"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.string   "user_id"
    t.string   "user_name"
    t.string   "favorite_id"
    t.string   "type"
    t.string   "extra1"
    t.string   "extra2"
    t.string   "extra3"
    t.string   "extra4"
    t.string   "extra5"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "identities", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "taggings", force: :cascade do |t|
    t.string   "tag_id"
    t.string   "target_id"
    t.string   "target_type"
    t.string   "extra1"
    t.string   "extra2"
    t.string   "extra3"
    t.string   "extra4"
    t.string   "extra5"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.string   "extra1"
    t.string   "extra2"
    t.string   "extra3"
    t.string   "extra4"
    t.string   "extra5"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_books", force: :cascade do |t|
    t.string   "user_id"
    t.string   "book_id"
    t.string   "book_name"
    t.datetime "add_time"
    t.string   "extra1"
    t.string   "extra2"
    t.string   "extra3"
    t.string   "extra4"
    t.string   "extra5"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_stats", force: :cascade do |t|
    t.string   "user_id"
    t.string   "books_cnt"
    t.string   "clippings_cnt"
    t.string   "favorites_cnt"
    t.string   "followers_cnt"
    t.string   "follows_cnt"
    t.datetime "last_login"
    t.string   "extra1"
    t.string   "extra2"
    t.string   "extra3"
    t.string   "extra4"
    t.string   "extra5"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "user_name"
    t.string   "password"
    t.integer  "gender"
    t.string   "name"
    t.string   "avatar"
    t.string   "provider"
    t.string   "oauth_token"
    t.integer  "disable"
    t.string   "password_reset_token"
    t.datetime "password_sent_at"
    t.string   "extra1"
    t.string   "extra2"
    t.string   "extra3"
    t.string   "extra4"
    t.string   "extra5"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

end
