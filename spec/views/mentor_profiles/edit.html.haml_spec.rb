require 'rails_helper'

RSpec.describe "mentor_profiles/edit", :type => :view do
  before(:each) do
    @mentor_profile = assign(:mentor_profile, MentorProfile.create!(
      :title => "MyString",
      :mentor_profile_id => 1,
      :mentor_profile_type => "MyString"
    ))
  end

  it "renders the edit mentor_profile form" do
    render

    assert_select "form[action=?][method=?]", mentor_profile_path(@mentor_profile), "post" do

      assert_select "input#mentor_profile_title[name=?]", "mentor_profile[title]"

      assert_select "input#mentor_profile_mentor_profile_id[name=?]", "mentor_profile[mentor_profile_id]"

      assert_select "input#mentor_profile_mentor_profile_type[name=?]", "mentor_profile[mentor_profile_type]"
    end
  end
end
