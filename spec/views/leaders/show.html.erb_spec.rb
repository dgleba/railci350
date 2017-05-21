require 'rails_helper'

RSpec.describe "leaders/show", type: :view do
  before(:each) do
    @leader = assign(:leader, Leader.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Clocknum/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Fullcommonname/)
    expect(rendered).to match(/Ci Leader/)
    expect(rendered).to match(/Comment/)
    expect(rendered).to match(/Position/)
    expect(rendered).to match(/Shift/)
    expect(rendered).to match(/Dept/)
    expect(rendered).to match(/Common Name/)
    expect(rendered).to match(/Fullname/)
    expect(rendered).to match(/Middleproper/)
    expect(rendered).to match(/Lastproper/)
    expect(rendered).to match(/Firstproper/)
    expect(rendered).to match(/First/)
    expect(rendered).to match(/Middle/)
    expect(rendered).to match(/Last/)
  end
end
