require 'rails_helper'

RSpec.describe "StartupProfiles", :type => :request do
  describe "GET /startup_profiles" do
    it "works! (now write some real specs)" do
      get startup_profiles_path
      expect(response.status).to be(200)
    end
  end
end
