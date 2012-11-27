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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121127200918) do

  create_table "bars", :force => true do |t|
    t.string   "name"
    t.float    "gps_coords"
    t.integer  "num_of_screens"
    t.integer  "fan_intensity_rating"
    t.integer  "team_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "bars_games", :force => true do |t|
    t.integer  "bar_id"
    t.integer  "game_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "games", :force => true do |t|
    t.datetime "game_at"
    t.integer  "home_team_id"
    t.integer  "away_team_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "teams", :force => true do |t|
    t.string   "team_name"
    t.string   "home_city"
    t.string   "logo_path"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end