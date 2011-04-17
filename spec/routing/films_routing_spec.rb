require "spec_helper"

describe FilmsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/films" }.should route_to(:controller => "films", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/films/new" }.should route_to(:controller => "films", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/films/1" }.should route_to(:controller => "films", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/films/1/edit" }.should route_to(:controller => "films", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/films" }.should route_to(:controller => "films", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/films/1" }.should route_to(:controller => "films", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/films/1" }.should route_to(:controller => "films", :action => "destroy", :id => "1")
    end

  end
end
