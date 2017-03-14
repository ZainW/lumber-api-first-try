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

ActiveRecord::Schema.define(version: 20170310163205) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abilities", force: :cascade do |t|
    t.string   "name"
    t.string   "damage"
    t.string   "damage_type"
    t.string   "mana_cost"
    t.string   "cooldown"
    t.string   "ability_type"
    t.jsonb    "more"
    t.integer  "hero_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "heroes", force: :cascade do |t|
    t.string   "name"
    t.string   "profile_url"
    t.integer  "base_str"
    t.integer  "base_agi"
    t.integer  "base_int"
    t.decimal  "add_str"
    t.decimal  "add_agi"
    t.decimal  "add_int"
    t.integer  "move_speed"
    t.decimal  "turn_rate"
    t.string   "attack_type"
    t.jsonb    "talents"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
