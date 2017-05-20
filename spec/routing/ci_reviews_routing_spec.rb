require "rails_helper"

RSpec.describe CiReviewsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/ci_reviews").to route_to("ci_reviews#index")
    end

    it "routes to #new" do
      expect(:get => "/ci_reviews/new").to route_to("ci_reviews#new")
    end

    it "routes to #show" do
      expect(:get => "/ci_reviews/1").to route_to("ci_reviews#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/ci_reviews/1/edit").to route_to("ci_reviews#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/ci_reviews").to route_to("ci_reviews#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/ci_reviews/1").to route_to("ci_reviews#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/ci_reviews/1").to route_to("ci_reviews#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/ci_reviews/1").to route_to("ci_reviews#destroy", :id => "1")
    end

  end
end
