require "rails_helper"

RSpec.describe MentorProfilesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/mentor_profiles").to route_to("mentor_profiles#index")
    end

    it "routes to #new" do
      expect(:get => "/mentor_profiles/new").to route_to("mentor_profiles#new")
    end

    it "routes to #show" do
      expect(:get => "/mentor_profiles/1").to route_to("mentor_profiles#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/mentor_profiles/1/edit").to route_to("mentor_profiles#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/mentor_profiles").to route_to("mentor_profiles#create")
    end

    it "routes to #update" do
      expect(:put => "/mentor_profiles/1").to route_to("mentor_profiles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/mentor_profiles/1").to route_to("mentor_profiles#destroy", :id => "1")
    end

  end
end
