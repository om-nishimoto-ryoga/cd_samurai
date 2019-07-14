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

ActiveRecord::Schema.define(version: 2019_07_14_080634) do

  create_table "addresses", force: :cascade do |t|
    t.integer "user_id"
    t.string "tel_number", null: false
    t.string "postal_code", null: false
    t.string "address", null: false
    t.string "to_name", null: false
    t.string "to_name_kana", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_addresses_on_user_id"
  end

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "carts", force: :cascade do |t|
    t.integer "quantity", default: 1, null: false
    t.integer "user_id"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_carts_on_product_id"
    t.index ["user_id"], name: "index_carts_on_user_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "genre_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_products", force: :cascade do |t|
    t.string "artist_name", null: false
    t.string "cd_title", null: false
    t.string "label_name", null: false
    t.string "product_image_id", null: false
    t.integer "price", null: false
    t.integer "ship_status", default: 0
    t.integer "genre_id"
    t.integer "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["genre_id"], name: "index_order_products_on_genre_id"
    t.index ["order_id"], name: "index_order_products_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "payment_method", default: 0
    t.string "to_address", null: false
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "product_disc_songs", force: :cascade do |t|
    t.string "song_name", null: false
    t.integer "position"
    t.integer "product_disc_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_disc_id"], name: "index_product_disc_songs_on_product_disc_id"
  end

  create_table "product_discs", force: :cascade do |t|
    t.string "disc_title", null: false
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_product_discs_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.integer "genre_id"
    t.integer "admin_id"
    t.string "artist_name", null: false
    t.string "cd_title", null: false
    t.string "label_name", null: false
    t.string "product_image_id", null: false
    t.integer "price", null: false
    t.integer "stock", null: false
    t.boolean "buy_capable", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_products_on_admin_id"
    t.index ["genre_id"], name: "index_products_on_genre_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "last_name", default: "", null: false
    t.string "first_name", default: "", null: false
    t.string "last_name_kana", default: "", null: false
    t.string "first_name_kana", default: "", null: false
    t.integer "gender"
    t.integer "birthday"
    t.boolean "login_allowed", default: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
