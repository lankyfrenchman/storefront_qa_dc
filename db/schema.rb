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

ActiveRecord::Schema.define(version: 20160514185456) do

  create_table "business_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "business_subcategories", force: :cascade do |t|
    t.string   "name"
    t.integer  "business_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "businesses", force: :cascade do |t|
    t.string   "name"
    t.integer  "storefront_id"
    t.string   "business_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "data_points", force: :cascade do |t|
    t.boolean  "vacant"
    t.integer  "outside_condition"
    t.integer  "inside_condition"
    t.integer  "commercial"
    t.string   "photo_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "number"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "zip"
    t.string   "quadrant"
    t.string   "street_number"
    t.integer  "business_subcategory_id"
    t.string   "business_name"
  end

  create_table "storefronts", force: :cascade do |t|
    t.string   "street_number"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
