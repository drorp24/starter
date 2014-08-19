require 'rails_helper'

RSpec.describe "mentor_profile_businesses/show", :type => :view do
  before(:each) do
    @mentor_profile_business = assign(:mentor_profile_business, MentorProfileBusiness.create!(
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
  end
end
