ActiveRecord::Schema.define(version: 2020_01_21_093813) do

  create_table "answers", force: :cascade do |t|
    t.integer "position"
    t.integer "step_id"
    t.string "effect", default: "none"
    t.string "phrase"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "next_steps", force: :cascade do |t|
    t.integer "answer_id"
    t.integer "step_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "replicas", force: :cascade do |t|
    t.integer "position"
    t.integer "step_id"
    t.string "type", default: "TextReplica"
    t.integer "timeout", default: 1000
    t.string "phrase"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "steps", force: :cascade do |t|
    t.string "title"
    t.boolean "opening", default: false
    t.boolean "gift", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
