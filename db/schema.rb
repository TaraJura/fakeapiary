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

ActiveRecord::Schema[7.0].define(version: 2022_05_06_124724) do
  create_table "addresses", force: :cascade do |t|
    t.string "name"
    t.string "company"
    t.string "street"
    t.string "city"
    t.string "zip"
    t.string "country"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "billings", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.boolean "cod"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deliveries", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.string "number"
    t.date "date"
    t.string "symvar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_states", force: :cascade do |t|
    t.string "name"
    t.date "date_created"
    t.string "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string "order_number"
    t.string "order_number_web"
    t.string "note"
    t.boolean "pdf_docs"
    t.string "total"
    t.string "currency"
    t.integer "business_unit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.string "short_name"
    t.string "barcode"
    t.string "unit"
    t.integer "wight_brutto"
    t.integer "weight_netto"
    t.integer "volume"
    t.integer "width"
    t.integer "height"
    t.integer "depth"
    t.integer "units_in_box"
    t.integer "boxes_on_pallete"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tracking_numbers", force: :cascade do |t|
    t.string "carrier"
    t.string "tracking_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
