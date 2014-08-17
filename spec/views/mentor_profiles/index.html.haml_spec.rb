require 'rails_helper'

RSpec.describe "mentor_profiles/index", :type => :view do
  before(:each) do
    assign(:mentor_profiles, [
      MentorProfile.create!(
        :title => "Title",
        :profile_id => 1,
        :profile_type => "Profile Type"
      ),
      MentorProfile.create!(
        :title => "Title",
        :profile_id => 1,
        :profile_type => "Profile Type"
      )
    ])
  end

  it "renders a list of mentor_profiles" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Profile Type".to_s, :count => 2
  end
end
