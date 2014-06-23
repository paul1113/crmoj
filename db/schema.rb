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

ActiveRecord::Schema.define(version: 20140623020419) do

  create_table "address_type_lists", force: true do |t|
    t.string   "uuid"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "addresses", force: true do |t|
    t.string   "uuid"
    t.integer  "type"
    t.integer  "national"
    t.integer  "province"
    t.integer  "city"
    t.string   "address"
    t.integer  "postcode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "arealists", force: true do |t|
    t.string   "uuid"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "departmentlists", force: true do |t|
    t.string   "uuid"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "email_type_lists", force: true do |t|
    t.string   "uuid"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "emails", force: true do |t|
    t.string   "uuid"
    t.string   "mail"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fax_type_lists", force: true do |t|
    t.string   "uuid"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "faxes", force: true do |t|
    t.string   "uuid"
    t.integer  "type"
    t.integer  "national"
    t.integer  "city"
    t.string   "number"
    t.string   "extension"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "im_type_lists", force: true do |t|
    t.string   "uuid"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ims", force: true do |t|
    t.string   "uuid"
    t.integer  "type"
    t.string   "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mobile_type_lists", force: true do |t|
    t.string   "uuid"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mobiles", force: true do |t|
    t.string   "uuid"
    t.integer  "type"
    t.integer  "national"
    t.string   "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phone_type_lists", force: true do |t|
    t.string   "uuid"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phones", force: true do |t|
    t.string   "uuid"
    t.integer  "type"
    t.integer  "national"
    t.integer  "city"
    t.string   "number"
    t.string   "extension"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "positionlists", force: true do |t|
    t.string   "uuid"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subjectionlists", force: true do |t|
    t.string   "uuid"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_notvenifieds", force: true do |t|
    t.string   "name"
    t.string   "uuid"
    t.date     "birthday"
    t.string   "property"
    t.string   "mobile"
    t.boolean  "sender"
    t.string   "mail"
    t.string   "department"
    t.string   "position"
    t.string   "area"
    t.string   "subjection"
    t.string   "tel"
    t.string   "fax"
    t.string   "im"
    t.string   "id_card"
    t.string   "address"
    t.integer  "postcode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "uuid"
    t.date     "birthday"
    t.string   "property"
    t.string   "mobile"
    t.boolean  "sender"
    t.string   "mail"
    t.string   "department"
    t.string   "position"
    t.string   "area"
    t.string   "subjection"
    t.string   "tel"
    t.string   "fax"
    t.string   "im"
    t.string   "id_card"
    t.string   "address"
    t.integer  "postcode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
