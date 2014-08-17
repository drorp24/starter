require 'rails_helper'

RSpec.describe "general_profiles/new", :type => :view do
  before(:each) do
    assign(:general_profile, GeneralProfile.new(
      :user_id => 1,
      :title => "MyString"
    ))
  end

  it "renders new general_profile form" do
    render

    assert_select "form[action=?][method=?]", general_profiles_path, "post" do

      assert_select "input#general_profile_user_id[name=?]", "general_profile[user_id]"

      assert_select "input#general_profile_title[name=?]", "general_profile[title]"
    end
  end
end
