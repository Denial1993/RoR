require 'rails_helper'

RSpec.describe "missions/index.html.erb", type: :view do
    it 'can render' do
        @mission = Mission.create(:name => "Big Name", :description => "description")
        @missions = Array.new(2, @mission)
        render
        expect(rendered).to include("Name")
        expect(rendered).to include("Big Name")
    end
end

