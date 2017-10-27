require "rails_helper"

RSpec.describe CompetencyUnitsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/competency_units").to route_to("competency_units#index")
    end

    it "routes to #new" do
      expect(:get => "/competency_units/new").to route_to("competency_units#new")
    end

    it "routes to #show" do
      expect(:get => "/competency_units/1").to route_to("competency_units#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/competency_units/1/edit").to route_to("competency_units#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/competency_units").to route_to("competency_units#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/competency_units/1").to route_to("competency_units#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/competency_units/1").to route_to("competency_units#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/competency_units/1").to route_to("competency_units#destroy", :id => "1")
    end

  end
end
