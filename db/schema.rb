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

ActiveRecord::Schema[7.0].define(version: 2017_02_21_205325) do
  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_id", null: false
    t.string "resource_type", null: false
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: nil
    t.datetime "remember_created_at", precision: nil
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at", precision: nil
    t.datetime "last_sign_in_at", precision: nil
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "families", force: :cascade do |t|
    t.string "family_name"
    t.integer "kingdom_id"
    t.integer "phylum_id"
    t.integer "fossil_class_id"
    t.integer "order_id"
  end

  create_table "fossil_classes", force: :cascade do |t|
    t.string "class_name"
    t.integer "phylum_id"
    t.integer "kingdom_id"
  end

  create_table "fossils", force: :cascade do |t|
    t.integer "kingdom_id"
    t.integer "phylum_id"
    t.integer "fossil_class_id"
    t.integer "order_id"
    t.integer "family_id"
    t.integer "genera_id"
    t.string "species_name"
    t.text "summary"
    t.text "env_int"
    t.text "remarks"
    t.string "age_range"
    t.string "author"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.bigint "avatar_file_size"
    t.datetime "avatar_updated_at", precision: nil
  end

  create_table "generas", force: :cascade do |t|
    t.string "genus_name"
    t.integer "kingdom_id"
    t.integer "phylum_id"
    t.integer "fossil_class_id"
    t.integer "order_id"
    t.integer "family_id"
  end

  create_table "kingdoms", force: :cascade do |t|
    t.string "kingdom_name"
  end

  create_table "orders", force: :cascade do |t|
    t.string "order_name"
    t.integer "kingdom_id"
    t.integer "phylum_id"
    t.integer "fossil_class_id"
  end

  create_table "phylums", force: :cascade do |t|
    t.integer "kingdom_id"
    t.string "phylum_name"
  end

end
