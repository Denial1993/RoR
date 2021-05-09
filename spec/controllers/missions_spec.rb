require "rails_helper"

RSpec.describe MissionsController, type: :controller do
  before(:all) do
    @mission_1 = Mission.create(name: "name_1", description: "description_1")
    @mission_2 = Mission.create(name: "andrea" , description: "moto")
  end
  
  it "#index" do
    get :index
    expect(response).to have_http_status(200)
    expect(response).to render_template(:index)
  end
  
  it "#new" do
    get :new
    expect(response).to have_http_status(200)
    expect(response).to render_template(:new)
  end
  
  
  it "#edit" do
    #rails 5 之後改版成 參數要這樣寫: params: {id: @mission_1.id}
    #rails 5以前 參數是這樣寫: id: @mission_1[:id]
    get :edit, params: {id: @mission_1.id}
    expect(response).to have_http_status(200)
    expect(response).to render_template(:edit)
  end
  
  describe "#create"  do
    before(:all) do
      @mission_params = {name: "name", description: "description" }
    end
    
    it "create record" do
      expect{post :create,params: {mission: @mission_params}  }.to change{Mission.all.size}.by(1)
    end
    
    it "創造成功後redirect_to index" do
      post :create , params: {mission: @mission_params}
      expect(response).to have_http_status(302)
      expect(response).not_to have_http_status(200)
      expect(response).to redirect_to(missions_path)      
    end
  end
  
  describe "#update"  do
    before(:all) do
      @mission_params = {name: "name_3", description: "description" }
    end
    
#    it "change record" do
#      post :update,params: {mission: @mission_params} ,params: {name: @mission_2.name}
#      expect(Mission.find(@mission_2.name)).to eq("name_3")
#    end
    it "changes record" do 
      post :update, params:{mission: @mission_params , id: @mission_2.id}
      expect(Mission.find(@mission_2[:id])[:name]).to eq("name_3")
    end
    
    it "創造成功後redirect_to index" do
#      post :update , params: {mission: @mission_params}
      post :update, params:{mission: @mission_params , id: @mission_2.id}
      expect(response).to have_http_status(302)
      expect(response).not_to have_http_status(200)
      expect(response).to redirect_to(missions_path)      
    end
  end
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end