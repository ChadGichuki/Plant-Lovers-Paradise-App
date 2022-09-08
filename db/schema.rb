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

ActiveRecord::Schema.define(version: 2022_09_08_112827) do

  create_table "buyers", force: :cascade do |t|
    t.string "name"
    t.integer "contact"
    t.string "feedback"
  end

  create_table "plants", force: :cascade do |t|
    t.string "name"
    t.string "species"
    t.string "best_climate"
    t.string "water_frequency"
    t.integer "no_in_stock"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "purchases", force: :cascade do |t|
    t.integer "plant_id"
    t.integer "buyer_id"
    t.integer "cost"
  end

end
