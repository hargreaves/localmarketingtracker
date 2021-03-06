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

ActiveRecord::Schema.define(:version => 20130218032905) do

  create_table "initiatives", :force => true do |t|
    t.string   "name"
    t.date     "launchdate"
    t.date     "enddate"
    t.text     "target"
    t.text     "offer"
    t.string   "landingpage"
    t.integer  "budget"
    t.integer  "targetemails"
    t.integer  "actualemails"
    t.integer  "spent"
    t.string   "teamlead"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "market_id"
  end

  create_table "markets", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "q12013_budget"
    t.integer  "q12013_target"
  end

end
