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

ActiveRecord::Schema[7.0].define(version: 2023_08_17_204519) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agenda_slots", force: :cascade do |t|
    t.bigint "agenda_id", null: false
    t.date "date"
    t.time "start"
    t.time "finish"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["agenda_id"], name: "index_agenda_slots_on_agenda_id"
  end

  create_table "agendas", force: :cascade do |t|
    t.bigint "professional_id", null: false
    t.string "place_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["professional_id"], name: "index_agendas_on_professional_id"
  end

  create_table "professionals", force: :cascade do |t|
    t.string "name"
    t.string "role_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "agenda_slots", "agendas"
  add_foreign_key "agendas", "professionals"
end
