require "spec_helper"
describe SessionsController do
	describe "routing" do
		it "routes to #" do
			{:get => "/"}.should route_to(:controller => "sessions", :action => "home")
		end
		
		it "routes to #aboutus" do
			{:get => "/sessions/aboutus"}.should route_to(:controller => "sessions", :action => "aboutus")
		end
	
	
		it "routes to #home" do
			{:get => "/sessions/home"}.should route_to(:controller => "sessions", :action => "home")
		end
		
		it "routes to #contactby" do
			{:get => "/sessions/contactby"}.should route_to(:controller => "sessions", :action => "contactby")
		end

		it "routes to #term" do
			{:get => "/sessions/term"}.should route_to(:controller => "sessions", :action => "term")
		end
		it "routes to #delivery_msg" do
			{:get => "/sessions/delivery_msg"}.should route_to(:controller => "sessions", :action => "delivery_msg")
		end
		it "routes to #delivery_msg" do
			{:post=> "/sessions/delivery_msg"}.should route_to(:controller => "sessions", :action => "delivery_msg")
		end
		it "routes to sessions#create" do
			{:post => "/auth/:provider/callback"}.should route_to(:controller=>"sessions", :action=>"create", "provider"=>":provider")
		end

		it "routes to sessions#destroy" do
			{:post => "/signout"}.should route_to(:controller=>"sessions", :action=>"destroy")
		end

	end

end
 
