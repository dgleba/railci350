require 'rails_helper'

RSpec.describe "lkup_sugg_statuses/edit", type: :view do
  before(:each) do
    @lkup_sugg_status = assign(:lkup_sugg_status, LkupSuggStatus.create!(
      :name => "MyString",
      :sort => 1,
      :active_status => 1
    ))
  end

  it "renders the edit lkup_sugg_status form" do
    render

    assert_select "form[action=?][method=?]", lkup_sugg_status_path(@lkup_sugg_status), "post" do

      assert_select "input#lkup_sugg_status_name[name=?]", "lkup_sugg_status[name]"

      assert_select "input#lkup_sugg_status_sort[name=?]", "lkup_sugg_status[sort]"

      assert_select "input#lkup_sugg_status_active_status[name=?]", "lkup_sugg_status[active_status]"
    end
  end
end
