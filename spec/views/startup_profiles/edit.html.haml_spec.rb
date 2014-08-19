require 'rails_helper'

RSpec.describe "startup_profiles/edit", :type => :view do
  before(:each) do
    @startup_profile = assign(:startup_profile, StartupProfile.create!(
      :role => "MyString"
    ))
  end

  it "renders the edit startup_profile form" do
    render

    assert_select "form[action=?][method=?]", startup_profile_path(@startup_profile), "post" do

      assert_select "input#startup_profile_role[name=?]", "startup_profile[role]"
    end
  end
end
