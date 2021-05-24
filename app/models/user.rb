class User < ApplicationRecord
#  確保唯一
  validates_uniqueness_of :email
  
  
#  確保格式正確 
#  參考資料網址: https://ihower.tw/rails/activerecord-lifecycle.html
  validates_format_of :email, :with => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  
  has_many :missions
end
