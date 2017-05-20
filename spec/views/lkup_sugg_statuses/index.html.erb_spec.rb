require 'rails_helper'

RSpec.describe "lkup_sugg_statuses/index", type: :view do
  before(:each) do
    assign(:lkup_sugg_statuses, [
      LkupSuggStatus.create!(
        :name => "Name",
        :sort => 2,
        :active_status => 3
      ),
      LkupSuggStatus.create!(
        :name => "Name",
        :sort => 2,
        :active_status => 3
      )
    ])
  end

  it "renders a list of lkup_sugg_statuses" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
