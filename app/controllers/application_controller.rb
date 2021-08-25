require './config/environment'
require 'JSON'
require 'rest-client'

class ApplicationController < Sinatra::Base
  Access-Control-Allow-Origin: http://localhost:3000/

  set :default_content_type, 'application/json'

  get "/foods" do
    @foods = Food.all
    money = {food: @foods}
    money.to_json
  end

  

  get "/foods/recipes" do
    resp = RestClient.get("https://api.spoonacular.com/recipes/findByIngredients?apiKey=6b11e8db33c64926a9e1523a34eb38e5&ingredients=salmon&number=10")
    resp.force_encoding('UTF-8')
    moolah = {data: resp}
    moolah.to_json
  end




end