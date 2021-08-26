require './config/environment'
require 'JSON'
require 'rest-client'

class ApplicationController < Sinatra::Base

  # set :default_content_type, 'application/json'

  get "/foods" do
    foods = Food.all
    foods.to_json
  end

  get "/foods/recipes" do
    resp = RestClient.get("https://api.spoonacular.com/recipes/findByIngredients?apiKey=6b11e8db33c64926a9e1523a34eb38e5&ingredients=salmon&number=10")
    resp.force_encoding('UTF-8')
    moolah = {data: resp}
    moolah.to_json
  end

  get "/foods/:id" do
    food = Food.find(params[:id])
    food[:name]
  end

  patch "/foods/:id" do
    food = Food.find(params[:id])
    food.update(
      # quantity: params[:quantity],
      # unit: params[:unit],
      # days_until_expiration: params[:days_until_expiration],
      # date_of_purchase: params[:date_of_purchase],
      category: params[:category]
    )
    food.to_json
  end




end