require 'rails_helper'

RSpec.describe "leaders/index", type: :view do
  before(:each) do
    assign(:leaders, [
      Leader.create!(
        :clocknum => "Clocknum",
        :Name => "Name",
        :fullcommonname => "Fullcommonname",
        :ci_leader => "Ci Leader",
        :comment => "Comment",
        :position => "Position",
        :shift => "Shift",
        :dept => "Dept",
        :Common_Name => "Common Name",
        :fullname => "Fullname",
        :Middleproper => "Middleproper",
        :Lastproper => "Lastproper",
        :Firstproper => "Firstproper",
        :First => "First",
        :Middle => "Middle",
        :Last => "Last"
      ),
      Leader.create!(
        :clocknum => "Clocknum",
        :Name => "Name",
        :fullcommonname => "Fullcommonname",
        :ci_leader => "Ci Leader",
        :comment => "Comment",
        :position => "Position",
        :shift => "Shift",
        :dept => "Dept",
        :Common_Name => "Common Name",
        :fullname => "Fullname",
        :Middleproper => "Middleproper",
        :Lastproper => "Lastproper",
        :Firstproper => "Firstproper",
        :First => "First",
        :Middle => "Middle",
        :Last => "Last"
      )
    ])
  end

  it "renders a list of leaders" do
    render
    assert_select "tr>td", :text => "Clocknum".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Fullcommonname".to_s, :count => 2
    assert_select "tr>td", :text => "Ci Leader".to_s, :count => 2
    assert_select "tr>td", :text => "Comment".to_s, :count => 2
    assert_select "tr>td", :text => "Position".to_s, :count => 2
    assert_select "tr>td", :text => "Shift".to_s, :count => 2
    assert_select "tr>td", :text => "Dept".to_s, :count => 2
    assert_select "tr>td", :text => "Common Name".to_s, :count => 2
    assert_select "tr>td", :text => "Fullname".to_s, :count => 2
    assert_select "tr>td", :text => "Middleproper".to_s, :count => 2
    assert_select "tr>td", :text => "Lastproper".to_s, :count => 2
    assert_select "tr>td", :text => "Firstproper".to_s, :count => 2
    assert_select "tr>td", :text => "First".to_s, :count => 2
    assert_select "tr>td", :text => "Middle".to_s, :count => 2
    assert_select "tr>td", :text => "Last".to_s, :count => 2
  end
end
