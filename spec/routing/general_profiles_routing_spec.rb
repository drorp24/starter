require "rails_helper"

RSpec.describe GeneralProfilesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/general_profiles").to route_to("general_profiles#index")
    end

    it "routes to #new" do
      expect(:get => "/general_profiles/new").to route_to("general_profiles#new")
    end

    it "routes to #show" do
      expect(:get => "/general_profiles/1").to route_to("general_profiles#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/general_profiles/1/edit").to route_to("general_profiles#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/general_profiles").to route_to("general_profiles#create")
    end

    it "routes to #update" do
      expect(:put => "/general_profiles/1").to route_to("general_profiles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/general_profiles/1").to route_to("general_profiles#destroy", :id => "1")
    end

  end
end
