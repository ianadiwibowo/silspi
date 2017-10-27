require "rails_helper"

RSpec.describe CertificationSchemesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/certification_schemes").to route_to("certification_schemes#index")
    end

    it "routes to #new" do
      expect(:get => "/certification_schemes/new").to route_to("certification_schemes#new")
    end

    it "routes to #show" do
      expect(:get => "/certification_schemes/1").to route_to("certification_schemes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/certification_schemes/1/edit").to route_to("certification_schemes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/certification_schemes").to route_to("certification_schemes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/certification_schemes/1").to route_to("certification_schemes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/certification_schemes/1").to route_to("certification_schemes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/certification_schemes/1").to route_to("certification_schemes#destroy", :id => "1")
    end

  end
end
