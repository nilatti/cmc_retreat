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

ActiveRecord::Schema.define(:version => 20130724175922) do

  create_table "families", :force => true do |t|
    t.integer  "cabin",               :null => false
    t.integer  "camp",                :null => false
    t.integer  "day_full_weekend",    :null => false
    t.integer  "day_partial_weekend", :null => false
    t.integer  "contribution"
    t.boolean  "paid"
    t.integer  "friday_supper",       :null => false
    t.integer  "friday_snack",        :null => false
    t.integer  "saturday_breakfast",  :null => false
    t.integer  "saturday_lunch",      :null => false
    t.integer  "saturday_dinner",     :null => false
    t.integer  "saturday_snack",      :null => false
    t.integer  "sunday_breakfast",    :null => false
    t.integer  "sunday_lunch",        :null => false
    t.string   "allergies"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "email"
  end

  create_table "food_items", :force => true do |t|
    t.string   "description"
    t.integer  "requested"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.integer  "food_promises_count", :default => 0, :null => false
  end

  create_table "food_promises", :force => true do |t|
    t.integer  "food_item_id"
    t.integer  "family_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "food_promises", ["family_id"], :name => "index_food_promises_on_family_id"
  add_index "food_promises", ["food_item_id"], :name => "index_food_promises_on_food_item_id"

  create_table "people", :force => true do |t|
    t.integer  "age"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "family_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "volunteer_promises", :force => true do |t|
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "family_id"
    t.integer  "volunteer_task_id"
  end

  create_table "volunteer_tasks", :force => true do |t|
    t.datetime "created_at",                              :null => false
    t.datetime "updated_at",                              :null => false
    t.string   "job_title"
    t.string   "job_description"
    t.integer  "requested"
    t.integer  "volunteer_promises_count", :default => 0, :null => false
    t.string   "time"
  end

end
