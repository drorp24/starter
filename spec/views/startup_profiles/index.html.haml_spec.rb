require 'rails_helper'

RSpec.describe "startup_profiles/index", :type => :view do
  before(:each) do
    assign(:startup_profiles, [
      StartupProfile.create!(
        :role => "Role"
      ),
      StartupProfile.create!(
        :role => "Role"
      )
    ])
  end

  it "renders a list of startup_profiles" do
    render
    assert_select "tr>td", :text => "Role".to_s, :count => 2
  end
end
