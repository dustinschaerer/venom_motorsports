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

ActiveRecord::Schema.define(version: 20180105190824) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "barn_finds", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.date     "date_published"
    t.boolean  "published"
    t.integer  "admin_user_id"
    t.string   "slug"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.text     "teaser"
    t.string   "article_image"
    t.json     "supporting_images"
  end

  add_index "barn_finds", ["admin_user_id"], name: "index_barn_finds_on_admin_user_id", using: :btree

  create_table "build_images", force: :cascade do |t|
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "post_id"
  end

  add_index "build_images", ["post_id"], name: "index_build_images_on_post_id", using: :btree

  create_table "builds", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.date     "date_published"
    t.boolean  "published"
    t.integer  "admin_user_id"
    t.string   "slug"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.text     "teaser"
    t.string   "article_image"
  end

  add_index "builds", ["admin_user_id"], name: "index_builds_on_admin_user_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.integer  "sort"
    t.string   "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "footers", force: :cascade do |t|
    t.text     "first_column"
    t.text     "second_column"
    t.text     "third_column"
    t.text     "links"
    t.text     "copyright"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

  create_table "menu_item_types", force: :cascade do |t|
    t.string   "name"
    t.text     "html"
    t.integer  "sort"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menu_items", force: :cascade do |t|
    t.text     "html"
    t.integer  "sort"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "label"
    t.string   "location"
    t.integer  "menu_item_type_id"
    t.integer  "parent_id"
  end

  add_index "menu_items", ["menu_item_type_id"], name: "index_menu_items_on_menu_item_type_id", using: :btree

  create_table "messages", force: :cascade do |t|
    t.string   "email"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parts", force: :cascade do |t|
    t.string   "name"
    t.string   "part_number"
    t.integer  "amount"
    t.text     "notes"
    t.string   "part_image"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "parts_posts", id: false, force: :cascade do |t|
    t.integer "part_id", null: false
    t.integer "post_id", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.integer  "category_id"
    t.string   "title"
    t.text     "content"
    t.text     "teaser"
    t.string   "slug"
    t.date     "published_on"
    t.boolean  "published"
    t.integer  "admin_user_id"
    t.string   "article_image"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.text     "specs"
  end

  add_index "posts", ["admin_user_id"], name: "index_posts_on_admin_user_id", using: :btree
  add_index "posts", ["category_id"], name: "index_posts_on_category_id", using: :btree

  create_table "services", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "link_text"
    t.string   "link_destination"
    t.integer  "sort"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "slug"
  end

  create_table "settings", force: :cascade do |t|
    t.text     "title"
    t.text     "subtitle"
    t.text     "description"
    t.text     "section_title"
    t.text     "projects_title"
    t.string   "main_image_url"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "home_image"
    t.string   "about_page_title"
    t.text     "about_page_text"
    t.string   "project_page_title"
    t.text     "project_page_text"
    t.string   "service_page_title"
    t.text     "service_page_text"
    t.string   "contact_page_title"
    t.text     "contact_page_text"
    t.string   "shop_page_title"
    t.text     "shop_page_text"
  end

  create_table "videos", force: :cascade do |t|
    t.integer  "post_id"
    t.string   "url"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "videos", ["post_id"], name: "index_videos_on_post_id", using: :btree

  add_foreign_key "barn_finds", "admin_users"
  add_foreign_key "build_images", "posts"
  add_foreign_key "builds", "admin_users"
  add_foreign_key "menu_items", "menu_item_types"
  add_foreign_key "posts", "admin_users"
  add_foreign_key "posts", "categories"
  add_foreign_key "videos", "posts"
end
