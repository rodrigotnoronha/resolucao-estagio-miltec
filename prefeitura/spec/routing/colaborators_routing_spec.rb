require "spec_helper"

describe ColaboratorsController do
  describe "routing" do

    it "routes to #index" do
      get("/colaborators").should route_to("colaborators#index")
    end

    it "routes to #new" do
      get("/colaborators/new").should route_to("colaborators#new")
    end

    it "routes to #show" do
      get("/colaborators/1").should route_to("colaborators#show", :id => "1")
    end

    it "routes to #edit" do
      get("/colaborators/1/edit").should route_to("colaborators#edit", :id => "1")
    end

    it "routes to #create" do
      post("/colaborators").should route_to("colaborators#create")
    end

    it "routes to #update" do
      put("/colaborators/1").should route_to("colaborators#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/colaborators/1").should route_to("colaborators#destroy", :id => "1")
    end

  end
end
