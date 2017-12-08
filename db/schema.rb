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

ActiveRecord::Schema.define(version: 20171109110416) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admins_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree
  end

  create_table "dictionary_accesses", force: :cascade do |t|
    t.integer  "information_system_id"
    t.string   "name",                  null: false
    t.string   "access_key",            null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["access_key"], name: "index_dictionary_accesses_on_access_key", unique: true, using: :btree
    t.index ["information_system_id"], name: "index_dictionary_accesses_on_information_system_id", using: :btree
    t.index ["name"], name: "index_dictionary_accesses_on_name", unique: true, using: :btree
  end

  create_table "group_rights", force: :cascade do |t|
    t.integer  "information_system_id"
    t.string   "group_name",            null: false
    t.string   "parameter",             null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["group_name"], name: "index_group_rights_on_group_name", unique: true, using: :btree
    t.index ["information_system_id"], name: "index_group_rights_on_information_system_id", using: :btree
  end

  create_table "information_systems", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "link",       null: false
    t.string   "access_key", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["access_key"], name: "index_information_systems_on_access_key", unique: true, using: :btree
    t.index ["name"], name: "index_information_systems_on_name", unique: true, using: :btree
  end

  create_table "permition_roles", force: :cascade do |t|
    t.integer  "role_id"
    t.integer  "permition_id"
    t.string   "parameter",    null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["permition_id"], name: "index_permition_roles_on_permition_id", using: :btree
    t.index ["role_id"], name: "index_permition_roles_on_role_id", using: :btree
  end

  create_table "permitions", force: :cascade do |t|
    t.string   "act",                   null: false
    t.integer  "information_system_id"
    t.string   "parameter",             null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["information_system_id"], name: "index_permitions_on_information_system_id", using: :btree
  end

  create_table "right_group_permitions", force: :cascade do |t|
    t.integer  "permition_id"
    t.integer  "group_right_id"
    t.string   "parameter",      null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["group_right_id"], name: "index_right_group_permitions_on_group_right_id", using: :btree
    t.index ["permition_id"], name: "index_right_group_permitions_on_permition_id", using: :btree
  end

  create_table "role_group_rights", force: :cascade do |t|
    t.integer  "role_id"
    t.integer  "group_right_id"
    t.string   "parameter",      null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["group_right_id"], name: "index_role_group_rights_on_group_right_id", using: :btree
    t.index ["role_id"], name: "index_role_group_rights_on_role_id", using: :btree
  end

  create_table "role_users", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.integer  "information_system_id"
    t.string   "parameter",             null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["information_system_id"], name: "index_role_users_on_information_system_id", using: :btree
    t.index ["role_id"], name: "index_role_users_on_role_id", using: :btree
    t.index ["user_id"], name: "index_role_users_on_user_id", using: :btree
  end

  create_table "roles", force: :cascade do |t|
    t.string   "notation",    null: false
    t.string   "name",        null: false
    t.string   "short_name",  null: false
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["name"], name: "index_roles_on_name", unique: true, using: :btree
    t.index ["notation"], name: "index_roles_on_notation", unique: true, using: :btree
    t.index ["short_name"], name: "index_roles_on_short_name", unique: true, using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "ln",         null: false
    t.string   "fn",         null: false
    t.string   "sn"
    t.date     "bday",       null: false
    t.string   "email",      null: false
    t.string   "login",      null: false
    t.string   "sex",        null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["login"], name: "index_users_on_login", unique: true, using: :btree
  end

  add_foreign_key "dictionary_accesses", "information_systems"
  add_foreign_key "group_rights", "information_systems"
  add_foreign_key "permition_roles", "permitions"
  add_foreign_key "permition_roles", "roles"
  add_foreign_key "permitions", "information_systems"
  add_foreign_key "right_group_permitions", "group_rights"
  add_foreign_key "right_group_permitions", "permitions"
  add_foreign_key "role_group_rights", "group_rights"
  add_foreign_key "role_group_rights", "roles"
  add_foreign_key "role_users", "information_systems"
  add_foreign_key "role_users", "roles"
  add_foreign_key "role_users", "users"
end
