require 'rails_helper'

RSpec.describe "cilisting1s/index", type: :view do
  before(:each) do
    assign(:cilisting1s, [
      Cilisting1.create!(
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
      ),
      Cilisting1.create!(
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
      )
    ])
  end

  it "renders a list of cilisting1s" do
    render
    assert_select "tr>td", :text => "Ft".to_s, :count => 2
    assert_select "tr>td", :text => "Project Number".to_s, :count => 2
    assert_select "tr>td", :text => "Project Description".to_s, :count => 2
    assert_select "tr>td", :text => "Owner".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Savings Category".to_s, :count => 2
    assert_select "tr>td", :text => "Annual Savings Dollars".to_s, :count => 2
    assert_select "tr>td", :text => "Percent Complete".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Originator".to_s, :count => 2
    assert_select "tr>td", :text => "Team".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "One Time Savings".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Soft Dollars".to_s, :count => 2
    assert_select "tr>td", :text => "Enter In Wc".to_s, :count => 2
    assert_select "tr>td", :text => "Area".to_s, :count => 2
    assert_select "tr>td", :text => "Id Wc".to_s, :count => 2
    assert_select "tr>td", :text => "Environmental".to_s, :count => 2
    assert_select "tr>td", :text => "Ease Of Implementation".to_s, :count => 2
    assert_select "tr>td", :text => "Submit".to_s, :count => 2
    assert_select "tr>td", :text => "Next Steps".to_s, :count => 2
    assert_select "tr>td", :text => "Suggestion Status".to_s, :count => 2
    assert_select "tr>td", :text => "Group".to_s, :count => 2
    assert_select "tr>td", :text => "Metric Impact".to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => "Gift 4 Suggestion".to_s, :count => 2
    assert_select "tr>td", :text => "Il Current".to_s, :count => 2
    assert_select "tr>td", :text => "Link".to_s, :count => 2
    assert_select "tr>td", :text => "Linkmore".to_s, :count => 2
    assert_select "tr>td", :text => "Display".to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
  end
end
