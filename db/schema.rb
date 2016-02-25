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

ActiveRecord::Schema.define(version: 20160225010938) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "gangplank_initiatives", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "promo_channel_promo_requests", id: false, force: :cascade do |t|
    t.integer "promo_channel_id"
    t.integer "promo_request_id"
  end

  create_table "promo_channels", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "promo_requests", force: :cascade do |t|
    t.string   "event_name"
    t.text     "description"
    t.integer  "location_id"
    t.string   "promo_image_uri"
    t.integer  "initiative_id"
    t.string   "organization_name"
    t.string   "organizer_email"
    t.boolean  "is_space_reserved"
    t.string   "event_privacy"
    t.boolean  "is_free"
    t.string   "registration_url"
    t.string   "press_release_uri"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

end
