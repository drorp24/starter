require 'rails_helper'

RSpec.describe "mentor_profile_academics/new", :type => :view do
  before(:each) do
    assign(:mentor_profile_academic, MentorProfileAcademic.new(
      :title => "MyString"
    ))
  end

  it "renders new mentor_profile_academic form" do
    render

    assert_select "form[action=?][method=?]", mentor_profile_academics_path, "post" do

      assert_select "input#mentor_profile_academic_title[name=?]", "mentor_profile_academic[title]"
    end
  end
end
