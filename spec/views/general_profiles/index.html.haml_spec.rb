require 'rails_helper'

RSpec.describe "general_profiles/index", :type => :view do
  before(:each) do
    assign(:general_profiles, [
      GeneralProfile.create!(
        :user_id => 1,
        :title => "Title"
      ),
      GeneralProfile.create!(
        :user_id => 1,
        :title => "Title"
      )
    ])
  end

  it "renders a list of general_profiles" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
