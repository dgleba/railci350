require 'rails_helper'

RSpec.describe "cilisting1s/new", type: :view do
  before(:each) do
    assign(:cilisting1, Cilisting1.new(
      :ft => "MyString",
      :project_number => "MyString",
      :project_description => "MyString",
      :owner => "MyString",
      :estimated_cost => 1,
      :savings_category => "MyString",
      :annual_savings_dollars => "MyString",
      :percent_complete => "MyString",
      :comments => "MyText",
      :originator => "MyString",
      :team => "MyString",
      :documents_complete => 1,
      :one_time_savings => "MyString",
      :hard_soft_savings => 1,
      :soft_dollars => "MyString",
      :enter_in_wc => "MyString",
      :area => "MyString",
      :id_wc => "MyString",
      :environmental => "MyString",
      :ease_of_implementation => "MyString",
      :submit => "MyString",
      :next_steps => "MyString",
      :suggestion_status => "MyString",
      :group => "MyString",
      :metric_impact => "MyString",
      :gift2_4_suggestion => 1,
      :gift_4_suggestion => "MyString",
      :il_current => "MyString",
      :link => "MyString",
      :linkmore => "MyString",
      :display => "MyString",
      :ciid => 1
    ))
  end

  it "renders new cilisting1 form" do
    render

    assert_select "form[action=?][method=?]", cilisting1s_path, "post" do

      assert_select "input#cilisting1_ft[name=?]", "cilisting1[ft]"

      assert_select "input#cilisting1_project_number[name=?]", "cilisting1[project_number]"

      assert_select "input#cilisting1_project_description[name=?]", "cilisting1[project_description]"

      assert_select "input#cilisting1_owner[name=?]", "cilisting1[owner]"

      assert_select "input#cilisting1_estimated_cost[name=?]", "cilisting1[estimated_cost]"

      assert_select "input#cilisting1_savings_category[name=?]", "cilisting1[savings_category]"

      assert_select "input#cilisting1_annual_savings_dollars[name=?]", "cilisting1[annual_savings_dollars]"

      assert_select "input#cilisting1_percent_complete[name=?]", "cilisting1[percent_complete]"

      assert_select "textarea#cilisting1_comments[name=?]", "cilisting1[comments]"

      assert_select "input#cilisting1_originator[name=?]", "cilisting1[originator]"

      assert_select "input#cilisting1_team[name=?]", "cilisting1[team]"

      assert_select "input#cilisting1_documents_complete[name=?]", "cilisting1[documents_complete]"

      assert_select "input#cilisting1_one_time_savings[name=?]", "cilisting1[one_time_savings]"

      assert_select "input#cilisting1_hard_soft_savings[name=?]", "cilisting1[hard_soft_savings]"

      assert_select "input#cilisting1_soft_dollars[name=?]", "cilisting1[soft_dollars]"

      assert_select "input#cilisting1_enter_in_wc[name=?]", "cilisting1[enter_in_wc]"

      assert_select "input#cilisting1_area[name=?]", "cilisting1[area]"

      assert_select "input#cilisting1_id_wc[name=?]", "cilisting1[id_wc]"

      assert_select "input#cilisting1_environmental[name=?]", "cilisting1[environmental]"

      assert_select "input#cilisting1_ease_of_implementation[name=?]", "cilisting1[ease_of_implementation]"

      assert_select "input#cilisting1_submit[name=?]", "cilisting1[submit]"

      assert_select "input#cilisting1_next_steps[name=?]", "cilisting1[next_steps]"

      assert_select "input#cilisting1_suggestion_status[name=?]", "cilisting1[suggestion_status]"

      assert_select "input#cilisting1_group[name=?]", "cilisting1[group]"

      assert_select "input#cilisting1_metric_impact[name=?]", "cilisting1[metric_impact]"

      assert_select "input#cilisting1_gift2_4_suggestion[name=?]", "cilisting1[gift2_4_suggestion]"

      assert_select "input#cilisting1_gift_4_suggestion[name=?]", "cilisting1[gift_4_suggestion]"

      assert_select "input#cilisting1_il_current[name=?]", "cilisting1[il_current]"

      assert_select "input#cilisting1_link[name=?]", "cilisting1[link]"

      assert_select "input#cilisting1_linkmore[name=?]", "cilisting1[linkmore]"

      assert_select "input#cilisting1_display[name=?]", "cilisting1[display]"

      assert_select "input#cilisting1_ciid[name=?]", "cilisting1[ciid]"
    end
  end
end
