require 'rails_helper'

RSpec.describe "mentor_profiles/new", :type => :view do
  before(:each) do
    assign(:mentor_profile, MentorProfile.new(
      :title => "MyString",
      :profile_id => 1,
      :profile_type => "MyString"
    ))
  end

  it "renders new mentor_profile form" do
    render

    assert_select "form[action=?][method=?]", mentor_profiles_path, "post" do

      assert_select "input#mentor_profile_title[name=?]", "mentor_profile[title]"

      assert_select "input#mentor_profile_profile_id[name=?]", "mentor_profile[profile_id]"

      assert_select "input#mentor_profile_profile_type[name=?]", "mentor_profile[profile_type]"
    end
  end
end
