require "rails_helper"

RSpec.describe GameListsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/game_lists").to route_to("game_lists#index")
    end


    it "routes to #show" do
      expect(:get => "/game_lists/1").to route_to("game_lists#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/game_lists").to route_to("game_lists#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/game_lists/1").to route_to("game_lists#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/game_lists/1").to route_to("game_lists#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/game_lists/1").to route_to("game_lists#destroy", :id => "1")
    end

  end
end
