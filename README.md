步驟4: 想像網站成品會是什麼樣子
    有想法之後，將 model 的關係圖手繪出來
        把 table schema 寫進 README.md（model 名稱、欄位名稱、資料形態）
        
ActiveRecord::Schema.define(version: 2021_04_30_081331) do

  create_table "mission_owners", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "missions", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "start"
    t.datetime "end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end