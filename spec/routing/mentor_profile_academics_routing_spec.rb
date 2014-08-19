require "rails_helper"

RSpec.describe MentorProfileAcademicsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/mentor_profile_academics").to route_to("mentor_profile_academics#index")
    end

    it "routes to #new" do
      expect(:get => "/mentor_profile_academics/new").to route_to("mentor_profile_academics#new")
    end

    it "routes to #show" do
      expect(:get => "/mentor_profile_academics/1").to route_to("mentor_profile_academics#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/mentor_profile_academics/1/edit").to route_to("mentor_profile_academics#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/mentor_profile_academics").to route_to("mentor_profile_academics#create")
    end

    it "routes to #update" do
      expect(:put => "/mentor_profile_academics/1").to route_to("mentor_profile_academics#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/mentor_profile_academics/1").to route_to("mentor_profile_academics#destroy", :id => "1")
    end

  end
end
