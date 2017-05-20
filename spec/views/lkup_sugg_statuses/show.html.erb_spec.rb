require 'rails_helper'

RSpec.describe "lkup_sugg_statuses/show", type: :view do
  before(:each) do
    @lkup_sugg_status = assign(:lkup_sugg_status, LkupSuggStatus.create!(
      :name => "Name",
      :sort => 2,
      :active_status => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
