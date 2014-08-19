require 'rails_helper'

RSpec.describe "professional_profiles/show", :type => :view do
  before(:each) do
    @professional_profile = assign(:professional_profile, ProfessionalProfile.create!(
      :user_id => 1,
      :position => "Position"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Position/)
  end
end
