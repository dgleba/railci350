require "rails_helper"

RSpec.describe LkupSuggStatusesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/lkup_sugg_statuses").to route_to("lkup_sugg_statuses#index")
    end

    it "routes to #new" do
      expect(:get => "/lkup_sugg_statuses/new").to route_to("lkup_sugg_statuses#new")
    end

    it "routes to #show" do
      expect(:get => "/lkup_sugg_statuses/1").to route_to("lkup_sugg_statuses#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/lkup_sugg_statuses/1/edit").to route_to("lkup_sugg_statuses#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/lkup_sugg_statuses").to route_to("lkup_sugg_statuses#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/lkup_sugg_statuses/1").to route_to("lkup_sugg_statuses#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/lkup_sugg_statuses/1").to route_to("lkup_sugg_statuses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/lkup_sugg_statuses/1").to route_to("lkup_sugg_statuses#destroy", :id => "1")
    end

  end
end
