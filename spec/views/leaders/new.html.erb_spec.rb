require 'rails_helper'

RSpec.describe "leaders/new", type: :view do
  before(:each) do
    assign(:leader, Leader.new(
      :clocknum => "MyString",
      :Name => "MyString",
      :fullcommonname => "MyString",
      :ci_leader => "MyString",
      :comment => "MyString",
      :position => "MyString",
      :shift => "MyString",
      :dept => "MyString",
      :Common_Name => "MyString",
      :fullname => "MyString",
      :Middleproper => "MyString",
      :Lastproper => "MyString",
      :Firstproper => "MyString",
      :First => "MyString",
      :Middle => "MyString",
      :Last => "MyString"
    ))
  end

  it "renders new leader form" do
    render

    assert_select "form[action=?][method=?]", leaders_path, "post" do

      assert_select "input#leader_clocknum[name=?]", "leader[clocknum]"

      assert_select "input#leader_Name[name=?]", "leader[Name]"

      assert_select "input#leader_fullcommonname[name=?]", "leader[fullcommonname]"

      assert_select "input#leader_ci_leader[name=?]", "leader[ci_leader]"

      assert_select "input#leader_comment[name=?]", "leader[comment]"

      assert_select "input#leader_position[name=?]", "leader[position]"

      assert_select "input#leader_shift[name=?]", "leader[shift]"

      assert_select "input#leader_dept[name=?]", "leader[dept]"

      assert_select "input#leader_Common_Name[name=?]", "leader[Common_Name]"

      assert_select "input#leader_fullname[name=?]", "leader[fullname]"

      assert_select "input#leader_Middleproper[name=?]", "leader[Middleproper]"

      assert_select "input#leader_Lastproper[name=?]", "leader[Lastproper]"

      assert_select "input#leader_Firstproper[name=?]", "leader[Firstproper]"

      assert_select "input#leader_First[name=?]", "leader[First]"

      assert_select "input#leader_Middle[name=?]", "leader[Middle]"

      assert_select "input#leader_Last[name=?]", "leader[Last]"
    end
  end
end
