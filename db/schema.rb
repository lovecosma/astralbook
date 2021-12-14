# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_12_14_064636) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "categories_correspondences", force: :cascade do |t|
    t.bigint "category_id"
    t.bigint "correspondence_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_categories_correspondences_on_category_id"
    t.index ["correspondence_id"], name: "index_categories_correspondences_on_correspondence_id"
  end

  create_table "correspondences", force: :cascade do |t|
    t.string "name"
    t.string "desc"
    t.bigint "category_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_correspondences_on_category_id"
  end

  create_table "correspondences_intentions", force: :cascade do |t|
    t.bigint "correspondence_id"
    t.bigint "intention_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["correspondence_id"], name: "index_correspondences_intentions_on_correspondence_id"
    t.index ["intention_id"], name: "index_correspondences_intentions_on_intention_id"
  end

  create_table "correspondences_subcategories", force: :cascade do |t|
    t.bigint "correspondence_id"
    t.bigint "subcategory_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["correspondence_id"], name: "index_correspondences_subcategories_on_correspondence_id"
    t.index ["subcategory_id"], name: "index_correspondences_subcategories_on_subcategory_id"
  end

  create_table "correspondences_subintentions", force: :cascade do |t|
    t.bigint "correspondence_id"
    t.bigint "subintention_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["correspondence_id"], name: "index_correspondences_subintentions_on_correspondence_id"
    t.index ["subintention_id"], name: "index_correspondences_subintentions_on_subintention_id"
  end

  create_table "intentions", force: :cascade do |t|
    t.string "name"
    t.string "desc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "subcategories", force: :cascade do |t|
    t.string "title"
    t.bigint "intention_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["intention_id"], name: "index_subcategories_on_intention_id"
  end

  create_table "subintentions", force: :cascade do |t|
    t.string "name"
    t.bigint "intention_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["intention_id"], name: "index_subintentions_on_intention_id"
  end

end
