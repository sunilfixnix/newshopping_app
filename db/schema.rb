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

ActiveRecord::Schema.define(version: 20161103074628) do

  create_table "bills", force: :cascade do |t|
    t.string   "linenumber"
    t.string   "quantity"
    t.integer  "invoice_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["invoice_id"], name: "index_bills_on_invoice_id"
  end

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "item_id"
    t.index ["item_id"], name: "index_carts_on_item_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string   "custABN"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "address"
    t.string   "phone"
    t.string   "pincode"
    t.string   "password"
    t.string   "confirmation"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.string   "custABN"
    t.date     "created"
    t.integer  "customer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["customer_id"], name: "index_invoices_on_customer_id"
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "price"
    t.integer  "bill_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "cart_id"
    t.index ["bill_id"], name: "index_items_on_bill_id"
    t.index ["cart_id"], name: "index_items_on_cart_id"
  end

  create_table "line_items", force: :cascade do |t|
    t.integer  "item_id"
    t.integer  "cart_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "quantity",   default: 1
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "customer_id"
    t.integer  "item_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "name"
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["item_id"], name: "index_orders_on_item_id"
  end

  create_table "paymodes", force: :cascade do |t|
    t.string   "name"
    t.string   "card_holder_name"
    t.string   "cardnumber"
    t.string   "validity"
    t.integer  "CCV"
    t.integer  "order_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["order_id"], name: "index_paymodes_on_order_id"
  end

end
