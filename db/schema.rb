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

ActiveRecord::Schema.define(version: 20151115183727) do

  create_table "authors", force: :cascade do |t|
    t.string "institution"
    t.string "institutional_id"
    t.string "full_name"
    t.string "cited_name"
    t.string "role"
    t.string "nationality"
    t.string "birth_place"
    t.string "death_place"
    t.date   "birth_date"
    t.date   "death_date"
  end

  create_table "pieces", force: :cascade do |t|
    t.string  "institution"
    t.string  "institutional_id"
    t.string  "title"
    t.string  "medium"
    t.string  "credit_line"
    t.string  "department"
    t.string  "physical_location"
    t.string  "web_url"
    t.string  "images"
    t.string  "provenance_text"
    t.string  "creation_date"
    t.date    "creation_date_earliest"
    t.date    "creation_date_latest"
    t.date    "date_acquired"
    t.float   "item_width"
    t.float   "item_height"
    t.float   "item_depth"
    t.float   "item_diameter"
    t.string  "accession_number"
    t.integer "author_id"
  end

  add_index "pieces", ["accession_number"], name: "index_pieces_on_accession_number"
  add_index "pieces", ["author_id"], name: "index_pieces_on_author_id"

end
