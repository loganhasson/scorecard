require "spec_helper"

describe ScorecardSheetsController do
  describe "routing" do

    it "routes to #index" do
      get("/scorecard_sheets").should route_to("scorecard_sheets#index")
    end

    it "routes to #new" do
      get("/scorecard_sheets/new").should route_to("scorecard_sheets#new")
    end

    it "routes to #show" do
      get("/scorecard_sheets/1").should route_to("scorecard_sheets#show", :id => "1")
    end

    it "routes to #edit" do
      get("/scorecard_sheets/1/edit").should route_to("scorecard_sheets#edit", :id => "1")
    end

    it "routes to #create" do
      post("/scorecard_sheets").should route_to("scorecard_sheets#create")
    end

    it "routes to #update" do
      put("/scorecard_sheets/1").should route_to("scorecard_sheets#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/scorecard_sheets/1").should route_to("scorecard_sheets#destroy", :id => "1")
    end

  end
end
