require 'rails_helper'

RSpec.describe "mentor_profile_businesses/new", :type => :view do
  before(:each) do
    assign(:mentor_profile_business, MentorProfileBusiness.new(
      :title => "MyString"
    ))
  end

  it "renders new mentor_profile_business form" do
    render

    assert_select "form[action=?][method=?]", mentor_profile_businesses_path, "post" do

      assert_select "input#mentor_profile_business_title[name=?]", "mentor_profile_business[title]"
    end
  end
end
