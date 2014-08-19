require 'rails_helper'

RSpec.describe "mentor_profile_academics/show", :type => :view do
  before(:each) do
    @mentor_profile_academic = assign(:mentor_profile_academic, MentorProfileAcademic.create!(
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
  end
end
