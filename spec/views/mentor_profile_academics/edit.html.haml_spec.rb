require 'rails_helper'

RSpec.describe "mentor_profile_academics/edit", :type => :view do
  before(:each) do
    @mentor_profile_academic = assign(:mentor_profile_academic, MentorProfileAcademic.create!(
      :title => "MyString"
    ))
  end

  it "renders the edit mentor_profile_academic form" do
    render

    assert_select "form[action=?][method=?]", mentor_profile_academic_path(@mentor_profile_academic), "post" do

      assert_select "input#mentor_profile_academic_title[name=?]", "mentor_profile_academic[title]"
    end
  end
end
