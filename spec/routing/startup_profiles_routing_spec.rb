require "rails_helper"

RSpec.describe StartupProfilesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/startup_profiles").to route_to("startup_profiles#index")
    end

    it "routes to #new" do
      expect(:get => "/startup_profiles/new").to route_to("startup_profiles#new")
    end

    it "routes to #show" do
      expect(:get => "/startup_profiles/1").to route_to("startup_profiles#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/startup_profiles/1/edit").to route_to("startup_profiles#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/startup_profiles").to route_to("startup_profiles#create")
    end

    it "routes to #update" do
      expect(:put => "/startup_profiles/1").to route_to("startup_profiles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/startup_profiles/1").to route_to("startup_profiles#destroy", :id => "1")
    end

  end
end
