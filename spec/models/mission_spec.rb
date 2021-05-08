require "rails_helper"

RSpec.describe Mission do
  describe "測試model新增修改刪除等功能正常運作"do
    it  "新增功能" do
      new = Mission.create!(name: "任務名稱_測試")
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
  
  
  describe "測試 我們的validate有正常運作" do
    it "validates name" do
      #這測試是在測說，如果我們今天沒填入東西，那這必定會失敗 <= 這件事情我們期望這邏輯通過
      expect(Mission.new).not_to be_valid
      expect(Mission.new(name: "Neo")).to be_valid
    end
    
    it ".no_description <= 測試no_description這個類別方法" do
      mission_with_description = Mission.create(name: "name_1", description: "descirption_1")
      mission_without_description = Mission.create(name: "name_1", description: nil)
      expect(Mission.no_description).to include(mission_without_description)
      expect(Mission.no_description).not_to include(mission_with_description)
    end
    
    #測試摘要功能是否符合我們期待
    it "#abstract" do
      mission_content = Mission.create(name: "name" , description: "12345678910123456789_not_abstract" )
      expect(mission_content.abstract).to include("12345678910123456789")
      expect(mission_content.abstract).not_to include("not_abstract")
    end
  end
end






































