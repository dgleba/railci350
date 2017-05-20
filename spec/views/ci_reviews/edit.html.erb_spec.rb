require 'rails_helper'

RSpec.describe "ci_reviews/edit", type: :view do
  before(:each) do
    @ci_review = assign(:ci_review, CiReview.create!(
      :project_number => "MyString",
      :suggestion_status => "MyString",
      :owner => "MyString",
      :project_description => "MyString",
      :comments => "MyText",
      :originator => "MyString",
      :link => "MyString",
      :linkmore => "MyString",
      :team => "MyString",
      :ciid => 1
    ))
  end

  it "renders the edit ci_review form" do
    render

    assert_select "form[action=?][method=?]", ci_review_path(@ci_review), "post" do

      assert_select "input#ci_review_project_number[name=?]", "ci_review[project_number]"

      assert_select "input#ci_review_suggestion_status[name=?]", "ci_review[suggestion_status]"

      assert_select "input#ci_review_owner[name=?]", "ci_review[owner]"

      assert_select "input#ci_review_project_description[name=?]", "ci_review[project_description]"

      assert_select "textarea#ci_review_comments[name=?]", "ci_review[comments]"

      assert_select "input#ci_review_originator[name=?]", "ci_review[originator]"

      assert_select "input#ci_review_link[name=?]", "ci_review[link]"

      assert_select "input#ci_review_linkmore[name=?]", "ci_review[linkmore]"

      assert_select "input#ci_review_team[name=?]", "ci_review[team]"

      assert_select "input#ci_review_ciid[name=?]", "ci_review[ciid]"
    end
  end
end
