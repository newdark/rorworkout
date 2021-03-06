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

ActiveRecord::Schema.define(:version => 20120815232129) do

  create_table "appointments", :force => true do |t|
    t.date     "visit_date"
    t.boolean  "requires_reminder", :default => true
    t.text     "reason_for_visit"
    t.integer  "customer_id"
    t.integer  "pet_id"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
  end

  create_table "customers", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "user_id"
    t.integer  "created_by"
    t.integer  "doctor_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "degrees", :force => true do |t|
    t.string   "name"
    t.string   "school_name"
    t.integer  "doctor_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "doctors", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "years_of_experience"
    t.integer  "created_by"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "pets", :force => true do |t|
    t.string   "name"
    t.string   "type_of_pet"
    t.string   "breed"
    t.integer  "age"
    t.integer  "weight"
    t.integer  "customer_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first_name",                             :null => false
    t.string   "last_name",                              :null => false
    t.string   "email",                                  :null => false
    t.string   "crypted_password",                       :null => false
    t.string   "password_salt",                          :null => false
    t.string   "persistence_token",                      :null => false
    t.string   "single_access_token",                    :null => false
    t.string   "perishable_token",                       :null => false
    t.integer  "login_count",         :default => 0,     :null => false
    t.integer  "failed_login_count",  :default => 0,     :null => false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.integer  "access_level",        :default => 0
    t.boolean  "active",              :default => false
    t.boolean  "approved",            :default => false
    t.boolean  "confirmed",           :default => false
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

end
