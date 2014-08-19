require 'rails_helper'

RSpec.describe "MentorProfileBusinesses", :type => :request do
  describe "GET /mentor_profile_businesses" do
    it "works! (now write some real specs)" do
      get mentor_profile_businesses_path
      expect(response.status).to be(200)
    end
  end
end
