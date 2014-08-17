require 'rails_helper'

RSpec.describe "mentor_profiles/show", :type => :view do
  before(:each) do
    @mentor_profile = assign(:mentor_profile, MentorProfile.create!(
      :title => "Title",
      :profile_id => 1,
      :profile_type => "Profile Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Profile Type/)
  end
end
