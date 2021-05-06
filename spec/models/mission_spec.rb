require "rails_helper"

RSpec.describe Mission do
  describe "測試model新增修改刪除等功能正常運作"do
    it  "新增功能" do
      new = Mission.create!
      expect(new).to eq(Mission.last)
    end
    
    it "修改原本的名稱並儲存成功" do
      edit = Mission.create(name: "denial")
      edit.name = "andrea"
      edit.save
      expect(edit.name) == "andrea"
    end
    
    it "刪除" do
      Mission.create(name: "devil")
      expect(Mission.find_by(name: "devil").destroy) == nil
    end
  end
  
end