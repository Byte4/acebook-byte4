require "rails_helper"

RSpec.describe DislikesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dislikes").to route_to("dislikes#index")
    end

    it "routes to #new" do
      expect(:get => "/dislikes/new").to route_to("dislikes#new")
    end

    it "routes to #show" do
      expect(:get => "/dislikes/1").to route_to("dislikes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dislikes/1/edit").to route_to("dislikes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dislikes").to route_to("dislikes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dislikes/1").to route_to("dislikes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dislikes/1").to route_to("dislikes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dislikes/1").to route_to("dislikes#destroy", :id => "1")
    end

  end
end
