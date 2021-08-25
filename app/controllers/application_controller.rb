require './config/environment'
require 'json'
require 'rest-client'

class ApplicationController < Sinatra::Base

  set :default_content_type, 'application/json'

  get "/foods" do
    @foods = Food.all
    @foods.to_json
  end

  post '/foods' do
    new_item = Food.create(
      name: params[:name],
      quantity: params[:quantity],
      unit: params[:unit],
      category: params[:category],
      days_until_expiration: params[:daysUntilExpiration],
      date_of_purchase: params[:dateOfPurchase],
    )
    new_item.to_json
  end

  get "/foods/recipes" do
    resp = RestClient.get("https://api.spoonacular.com/recipes/findByIngredients?apiKey=6b11e8db33c64926a9e1523a34eb38e5&ingredients=salmon&number=10")
    resp.force_encoding('UTF-8')
    moolah = {data: resp}
    moolah.to_json
  end

end