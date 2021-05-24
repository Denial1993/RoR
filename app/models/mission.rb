class Mission < ApplicationRecord
#  validates_presence_of :name , { :message => "不能空白_1" }
  validates :name,  presence: { message: "不能空白_2" }
  validates_length_of :name, minimum:  1
  
#  也可以合併成一行
#  validates_presence_of :name, :login, :email
  
  #將沒有內文(描述)的檔案給撈出來
#  def self.no_description
#    where(description: nil)
#  end
#  #這裡指的是摘要;大綱 不是指抽象。
#  def abstract
#    self.description[0..20]
#  end
#  
  
  
#  belongs_to :user
end














#確保必填
#validates_presence_of 


#確保字串長度
#validates_length_of