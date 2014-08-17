require 'rails_helper'

RSpec.describe "general_profiles/show", :type => :view do
  before(:each) do
    @general_profile = assign(:general_profile, GeneralProfile.create!(
      :user_id => 1,
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Title/)
  end
end
