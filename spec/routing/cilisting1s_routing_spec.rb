require "rails_helper"

RSpec.describe Cilisting1sController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/cilisting1s").to route_to("cilisting1s#index")
    end

    it "routes to #new" do
      expect(:get => "/cilisting1s/new").to route_to("cilisting1s#new")
    end

    it "routes to #show" do
      expect(:get => "/cilisting1s/1").to route_to("cilisting1s#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/cilisting1s/1/edit").to route_to("cilisting1s#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/cilisting1s").to route_to("cilisting1s#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/cilisting1s/1").to route_to("cilisting1s#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/cilisting1s/1").to route_to("cilisting1s#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/cilisting1s/1").to route_to("cilisting1s#destroy", :id => "1")
    end

  end
end
