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

ActiveRecord::Schema.define(version: 2019_02_14_205736) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "impacts", force: :cascade do |t|
    t.bigint "influencee_id", null: false
    t.bigint "influencer_id", null: false
    t.boolean "positive_impact", null: false
    t.text "reason"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["influencee_id", "influencer_id"], name: "index_impacts_on_influencee_id_and_influencer_id", unique: true
    t.index ["influencee_id"], name: "index_impacts_on_influencee_id"
    t.index ["influencer_id"], name: "index_impacts_on_influencer_id"
  end

  create_table "plants", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "location_requirement"
    t.string "fertilizer_requirement"
    t.string "root_type"
    t.string "water_requirement"
    t.boolean "seed_outdoors"
    t.integer "dist_to_neighbor"
    t.integer "crop_time"
    t.boolean "put_outdoors_jan"
    t.boolean "put_outdoors_feb"
    t.boolean "put_outdoors_mar"
    t.boolean "put_outdoors_apr"
    t.boolean "put_outdoors_may"
    t.boolean "put_outdoors_jun"
    t.boolean "put_outdoors_jul"
    t.boolean "put_outdoors_aug"
    t.boolean "put_outdoors_sep"
    t.boolean "put_outdoors_oct"
    t.boolean "put_outdoors_nov"
    t.boolean "put_outdoors_dec"
  end

  add_foreign_key "impacts", "plants", column: "influencee_id"
  add_foreign_key "impacts", "plants", column: "influencer_id"
end
