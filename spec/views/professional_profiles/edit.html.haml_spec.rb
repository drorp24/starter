require 'rails_helper'

RSpec.describe "professional_profiles/edit", :type => :view do
  before(:each) do
    @professional_profile = assign(:professional_profile, ProfessionalProfile.create!(
      :user_id => 1,
      :position => "MyString"
    ))
  end

  it "renders the edit professional_profile form" do
    render

    assert_select "form[action=?][method=?]", professional_profile_path(@professional_profile), "post" do

      assert_select "input#professional_profile_user_id[name=?]", "professional_profile[user_id]"

      assert_select "input#professional_profile_position[name=?]", "professional_profile[position]"
    end
  end
end
