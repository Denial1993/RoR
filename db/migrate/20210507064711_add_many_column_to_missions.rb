class AddManyColumnToMissions < ActiveRecord::Migration[5.2]
  def change
    #設定任務的優先順序（高、中、低）
    add_column :missions , :sequence , :string , :default => "中"
    #可設定任務目前的狀態（待處理、進行中、已完成）
    add_column :missions , :status , :string , :default => "待處理"
  end
end
#步驟12: 資料驗證 ---- 與之配合的 DB 限制，請寫成 migration ↑↑↑↑↑↑↑
#步驟12: 資料驗證 ---- 以 rails generate 指令產生 migration file ↑↑↑↑↑↑↑
#參考資料: https://ihower.tw/rails/migrations.html#sec2