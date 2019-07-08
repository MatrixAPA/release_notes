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

ActiveRecord::Schema.define(version: 2019_07_06_204657) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "release_notes_change_types", force: :cascade do |t|
    t.string "name"
    t.string "icon"
    t.integer "priority"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "release_notes_release_note_items", force: :cascade do |t|
    t.integer "user_id"
    t.integer "release_note_id"
    t.string "change_title"
    t.text "change_details"
    t.integer "change_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "release_notes_release_notes", force: :cascade do |t|
    t.integer "user_id"
    t.date "release_date"
    t.string "title"
    t.text "intro"
    t.text "outro"
    t.boolean "published"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
