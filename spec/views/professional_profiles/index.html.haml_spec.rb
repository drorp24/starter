require 'rails_helper'

RSpec.describe "professional_profiles/index", :type => :view do
  before(:each) do
    assign(:professional_profiles, [
      ProfessionalProfile.create!(
        :user_id => 1,
        :position => "Position"
      ),
      ProfessionalProfile.create!(
        :user_id => 1,
        :position => "Position"
      )
    ])
  end

  it "renders a list of professional_profiles" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Position".to_s, :count => 2
  end
end
