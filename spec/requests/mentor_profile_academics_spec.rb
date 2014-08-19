require 'rails_helper'

RSpec.describe "MentorProfileAcademics", :type => :request do
  describe "GET /mentor_profile_academics" do
    it "works! (now write some real specs)" do
      get mentor_profile_academics_path
      expect(response.status).to be(200)
    end
  end
end
