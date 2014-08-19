require 'rails_helper'

RSpec.describe "mentor_profile_businesses/edit", :type => :view do
  before(:each) do
    @mentor_profile_business = assign(:mentor_profile_business, MentorProfileBusiness.create!(
      :title => "MyString"
    ))
  end

  it "renders the edit mentor_profile_business form" do
    render

    assert_select "form[action=?][method=?]", mentor_profile_business_path(@mentor_profile_business), "post" do

      assert_select "input#mentor_profile_business_title[name=?]", "mentor_profile_business[title]"
    end
  end
end
