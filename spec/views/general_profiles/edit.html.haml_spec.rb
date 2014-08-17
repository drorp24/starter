require 'rails_helper'

RSpec.describe "general_profiles/edit", :type => :view do
  before(:each) do
    @general_profile = assign(:general_profile, GeneralProfile.create!(
      :user_id => 1,
      :title => "MyString"
    ))
  end

  it "renders the edit general_profile form" do
    render

    assert_select "form[action=?][method=?]", general_profile_path(@general_profile), "post" do

      assert_select "input#general_profile_user_id[name=?]", "general_profile[user_id]"

      assert_select "input#general_profile_title[name=?]", "general_profile[title]"
    end
  end
end
