require 'rails_helper'

RSpec.describe "professional_profiles/new", :type => :view do
  before(:each) do
    assign(:professional_profile, ProfessionalProfile.new(
      :user_id => 1,
      :position => "MyString"
    ))
  end

  it "renders new professional_profile form" do
    render

    assert_select "form[action=?][method=?]", professional_profiles_path, "post" do

      assert_select "input#professional_profile_user_id[name=?]", "professional_profile[user_id]"

      assert_select "input#professional_profile_position[name=?]", "professional_profile[position]"
    end
  end
end
