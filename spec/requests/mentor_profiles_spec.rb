require 'rails_helper'

RSpec.describe "MentorProfiles", :type => :request do
  describe "GET /mentor_profiles" do
    it "works! (now write some real specs)" do
      get mentor_profiles_path
      expect(response.status).to be(200)
    end
  end
end
