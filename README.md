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


步驟13: 網站佈署
  將佈署的方法寫進 README.md
    1.gemfile 加入一個
      group:production do
        gem "pg"
      end
    2.安裝HEROKU
    3.註冊HEROKU
    4.在終端機: 登入 $heroku login
      然後創一個新的 heroku create (專案名稱)
    5.$git add.
      $git commit
      $git push heroku master
      遇到問題:
        error: src refspec master does not match any
        error: failed to push some refs to 'https://git.heroku.com/ror-interview-mission.git'
    6.

    n.就完成布署了。
    
    
  也將使用的 framework 版號等資料記下來
  