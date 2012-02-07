require "spec_helper"

describe MintersController do
  describe "routing" do

    it "routes to #index" do
      get("/minters").should route_to("minters#index")
    end

    it "routes to #new" do
      get("/minters/new").should route_to("minters#new")
    end

    it "routes to #show" do
      get("/minters/1").should route_to("minters#show", :id => "1")
    end

    it "routes to #edit" do
      get("/minters/1/edit").should route_to("minters#edit", :id => "1")
    end

    it "routes to #create" do
      post("/minters").should route_to("minters#create")
    end

    it "routes to #update" do
      put("/minters/1").should route_to("minters#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/minters/1").should route_to("minters#destroy", :id => "1")
    end

  end
end
