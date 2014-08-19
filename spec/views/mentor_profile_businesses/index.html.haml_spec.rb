require 'rails_helper'

RSpec.describe "mentor_profile_businesses/index", :type => :view do
  before(:each) do
    assign(:mentor_profile_businesses, [
      MentorProfileBusiness.create!(
        :title => "Title"
      ),
      MentorProfileBusiness.create!(
        :title => "Title"
      )
    ])
  end

  it "renders a list of mentor_profile_businesses" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
