require 'rails_helper'

RSpec.describe "cilisting1s/show", type: :view do
  before(:each) do
    @cilisting1 = assign(:cilisting1, Cilisting1.create!(
      :ft => "Ft",
      :project_number => "Project Number",
      :project_description => "Project Description",
      :owner => "Owner",
      :estimated_cost => 2,
      :savings_category => "Savings Category",
      :annual_savings_dollars => "Annual Savings Dollars",
      :percent_complete => "Percent Complete",
      :comments => "MyText",
      :originator => "Originator",
      :team => "Team",
      :documents_complete => 3,
      :one_time_savings => "One Time Savings",
      :hard_soft_savings => 4,
      :soft_dollars => "Soft Dollars",
      :enter_in_wc => "Enter In Wc",
      :area => "Area",
      :id_wc => "Id Wc",
      :environmental => "Environmental",
      :ease_of_implementation => "Ease Of Implementation",
      :submit => "Submit",
      :next_steps => "Next Steps",
      :suggestion_status => "Suggestion Status",
      :group => "Group",
      :metric_impact => "Metric Impact",
      :gift2_4_suggestion => 5,
      :gift_4_suggestion => "Gift 4 Suggestion",
      :il_current => "Il Current",
      :link => "Link",
      :linkmore => "Linkmore",
      :display => "Display",
      :ciid => 6
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Ft/)
    expect(rendered).to match(/Project Number/)
    expect(rendered).to match(/Project Description/)
    expect(rendered).to match(/Owner/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Savings Category/)
    expect(rendered).to match(/Annual Savings Dollars/)
    expect(rendered).to match(/Percent Complete/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Originator/)
    expect(rendered).to match(/Team/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/One Time Savings/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/Soft Dollars/)
    expect(rendered).to match(/Enter In Wc/)
    expect(rendered).to match(/Area/)
    expect(rendered).to match(/Id Wc/)
    expect(rendered).to match(/Environmental/)
    expect(rendered).to match(/Ease Of Implementation/)
    expect(rendered).to match(/Submit/)
    expect(rendered).to match(/Next Steps/)
    expect(rendered).to match(/Suggestion Status/)
    expect(rendered).to match(/Group/)
    expect(rendered).to match(/Metric Impact/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/Gift 4 Suggestion/)
    expect(rendered).to match(/Il Current/)
    expect(rendered).to match(/Link/)
    expect(rendered).to match(/Linkmore/)
    expect(rendered).to match(/Display/)
    expect(rendered).to match(/6/)
  end
end
