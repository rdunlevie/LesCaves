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

ActiveRecord::Schema.define(version: 20170315055610) do

  create_table "regions", force: :cascade do |t|
    t.integer  "region_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sub_vineyards", force: :cascade do |t|
    t.integer  "sub_vineyard_id"
    t.integer  "vineyard_id"
    t.string   "name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "varietals", force: :cascade do |t|
    t.integer  "varietal_id"
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "vineyards", force: :cascade do |t|
    t.integer  "vineyard_id"
    t.string   "name"
    t.boolean  "has_sub_vineyard"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "wines", force: :cascade do |t|
    t.integer  "wine_id"
    t.integer  "year"
    t.integer  "vineyard_id"
    t.integer  "varietal_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
