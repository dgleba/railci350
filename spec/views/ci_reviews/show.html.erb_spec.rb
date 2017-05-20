require 'rails_helper'

RSpec.describe "ci_reviews/show", type: :view do
  before(:each) do
    @ci_review = assign(:ci_review, CiReview.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Project Number/)
    expect(rendered).to match(/Suggestion Status/)
    expect(rendered).to match(/Owner/)
    expect(rendered).to match(/Project Description/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Originator/)
    expect(rendered).to match(/Link/)
    expect(rendered).to match(/Linkmore/)
    expect(rendered).to match(/Team/)
    expect(rendered).to match(/2/)
  end
end
