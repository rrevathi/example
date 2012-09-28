require "spec_helper"
describe DoctorController do
	describe "routing" do
		it "routes to #index" do
			{:get => "/doctor"}.should route_to(:controller => "doctor", :action => "index")
		end
	
	
		it "routes to #new" do
			{:get => "/doctor/new"}.should route_to(:controller => "doctor", :action => "new")
		end
		
		it "routes to #create" do
			{:post => "/doctor"}.should route_to(:controller => "doctor", :action => "create")
		end

		it "routes to #show" do
			{:get => "/doctor/1"}.should route_to(:controller => "doctor", :action => "show", :id => "1")
		end
		it "routes to #edit" do
			{:get => "/doctor/1/edit"}.should route_to(:controller => "doctor", :action => "edit", :id => "1")
		end
		it "routes to #update" do
			{:put => "/doctor/1"}.should route_to(:controller => "doctor", :action => "update", :id => "1")
		end

		it "routes to #destroy" do
			{:delete => "/doctor/1"}.should route_to(:controller => "doctor", :action => "destroy", :id => "1")
		end
	end

end
 
