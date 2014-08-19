require 'rails_helper'

RSpec.describe "startup_profiles/new", :type => :view do
  before(:each) do
    assign(:startup_profile, StartupProfile.new(
      :role => "MyString"
    ))
  end

  it "renders new startup_profile form" do
    render

    assert_select "form[action=?][method=?]", startup_profiles_path, "post" do

      assert_select "input#startup_profile_role[name=?]", "startup_profile[role]"
    end
  end
end
