require "rails_helper"

RSpec.describe MentorProfileBusinessesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/mentor_profile_businesses").to route_to("mentor_profile_businesses#index")
    end

    it "routes to #new" do
      expect(:get => "/mentor_profile_businesses/new").to route_to("mentor_profile_businesses#new")
    end

    it "routes to #show" do
      expect(:get => "/mentor_profile_businesses/1").to route_to("mentor_profile_businesses#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/mentor_profile_businesses/1/edit").to route_to("mentor_profile_businesses#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/mentor_profile_businesses").to route_to("mentor_profile_businesses#create")
    end

    it "routes to #update" do
      expect(:put => "/mentor_profile_businesses/1").to route_to("mentor_profile_businesses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/mentor_profile_businesses/1").to route_to("mentor_profile_businesses#destroy", :id => "1")
    end

  end
end
