require 'rails_helper'

RSpec.describe "startup_profiles/show", :type => :view do
  before(:each) do
    @startup_profile = assign(:startup_profile, StartupProfile.create!(
      :role => "Role"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Role/)
  end
end
