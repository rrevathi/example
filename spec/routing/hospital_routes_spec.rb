require "spec_helper"
describe HospitalController do
	describe "routing" do
		it "routes to #index" do
			{:get => "/hospital"}.should route_to(:controller => "hospital", :action => "index")
		end
	
	
		it "routes to #new" do
			{:get => "/hospital/new"}.should route_to(:controller => "hospital", :action => "new")
		end
		
		it "routes to #create" do
			{:post => "/hospital"}.should route_to(:controller => "hospital", :action => "create")
		end

		it "routes to #show" do
			{:get => "/hospital/1"}.should route_to(:controller => "hospital", :action => "show", :id => "1")
		end
		it "routes to #edit" do
			{:get => "/hospital/1/edit"}.should route_to(:controller => "hospital", :action => "edit", :id => "1")
		end
		it "routes to #update" do
			{:put => "/hospital/1"}.should route_to(:controller => "hospital", :action => "update", :id => "1")
		end

		it "routes to #destroy" do
			{:delete => "/hospital/1"}.should route_to(:controller => "hospital", :action => "destroy", :id => "1")
		end
	end

end
 
