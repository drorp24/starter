require 'rails_helper'

RSpec.describe "ProfessionalProfiles", :type => :request do
  describe "GET /professional_profiles" do
    it "works! (now write some real specs)" do
      get professional_profiles_path
      expect(response.status).to be(200)
    end
  end
end
