require 'rails_helper'

RSpec.describe "lkup_sugg_statuses/new", type: :view do
  before(:each) do
    assign(:lkup_sugg_status, LkupSuggStatus.new(
      :name => "MyString",
      :sort => 1,
      :active_status => 1
    ))
  end

  it "renders new lkup_sugg_status form" do
    render

    assert_select "form[action=?][method=?]", lkup_sugg_statuses_path, "post" do

      assert_select "input#lkup_sugg_status_name[name=?]", "lkup_sugg_status[name]"

      assert_select "input#lkup_sugg_status_sort[name=?]", "lkup_sugg_status[sort]"

      assert_select "input#lkup_sugg_status_active_status[name=?]", "lkup_sugg_status[active_status]"
    end
  end
end
