require 'rails_helper'

RSpec.describe "ci_reviews/index", type: :view do
  before(:each) do
    assign(:ci_reviews, [
      CiReview.create!(
        :project_number => "Project Number",
        :suggestion_status => "Suggestion Status",
        :owner => "Owner",
        :project_description => "Project Description",
        :comments => "MyText",
        :originator => "Originator",
        :link => "Link",
        :linkmore => "Linkmore",
        :team => "Team",
        :ciid => 2
      ),
      CiReview.create!(
        :project_number => "Project Number",
        :suggestion_status => "Suggestion Status",
        :owner => "Owner",
        :project_description => "Project Description",
        :comments => "MyText",
        :originator => "Originator",
        :link => "Link",
        :linkmore => "Linkmore",
        :team => "Team",
        :ciid => 2
      )
    ])
  end

  it "renders a list of ci_reviews" do
    render
    assert_select "tr>td", :text => "Project Number".to_s, :count => 2
    assert_select "tr>td", :text => "Suggestion Status".to_s, :count => 2
    assert_select "tr>td", :text => "Owner".to_s, :count => 2
    assert_select "tr>td", :text => "Project Description".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Originator".to_s, :count => 2
    assert_select "tr>td", :text => "Link".to_s, :count => 2
    assert_select "tr>td", :text => "Linkmore".to_s, :count => 2
    assert_select "tr>td", :text => "Team".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
