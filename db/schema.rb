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

ActiveRecord::Schema.define(version: 20170604100110) do

  create_table "images", force: :cascade do |t|
    t.text     "en_title"
    t.text     "ja_title"
    t.text     "en_content"
    t.text     "ja_content"
    t.text     "location"
    t.text     "url"
    t.text     "image"
    t.text     "start"
    t.text     "key"
    t.text     "movie"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["en_title", "ja_title"], name: "index_images_on_en_title_and_ja_title"
  end

  create_table "movies", force: :cascade do |t|
    t.text     "en_title"
    t.text     "ja_title"
    t.text     "en_content"
    t.text     "ja_content"
    t.text     "present"
    t.text     "destination"
    t.text     "url"
    t.text     "key"
    t.text     "movie"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
