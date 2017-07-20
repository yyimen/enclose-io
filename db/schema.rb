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

ActiveRecord::Schema.define(version: 20170720032819) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "executables", force: :cascade do |t|
    t.integer "project_id", null: false
    t.string "name", null: false
    t.string "version", null: false
    t.integer "arch", null: false
    t.integer "os", null: false
    t.integer "phase", default: 0, null: false
    t.integer "runner_id"
    t.string "path"
    t.string "cmd"
    t.integer "ret"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "path_mtime"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name", null: false
    t.integer "language", null: false
    t.integer "source", null: false
    t.string "url", null: false
    t.integer "executables_count", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "token", null: false
    t.index ["name"], name: "index_projects_on_name", unique: true
    t.index ["token"], name: "index_projects_on_token", unique: true
  end

  create_table "runners", force: :cascade do |t|
    t.string "name", null: false
    t.integer "arch", null: false
    t.integer "os", null: false
    t.integer "executables_count", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_runners_on_name", unique: true
  end

end
