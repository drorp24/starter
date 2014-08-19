require 'rails_helper'

RSpec.describe "GeneralProfiles", :type => :request do
  describe "GET /general_profiles" do
    it "works! (now write some real specs)" do
      get general_profiles_path
      expect(response.status).to be(200)
    end
  end
end
