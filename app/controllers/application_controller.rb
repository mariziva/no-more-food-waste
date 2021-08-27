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
    resp = RestClient.get("https://api.spoonacular.com/recipes/findByIngredients?apiKey='insert API key here'&ingredients=salmon&number=10")
    resp.force_encoding('UTF-8')
    moolah = {data: resp}
    moolah.to_json
  end

  get "/foods/:id" do
    food = Food.find(params[:id])
    food[:name]
    console.log(food)
  end

  patch "/foods/:id" do
    food = Food.find(params[:id])
    food.update(
      # quantity: params[:quantity],
      # unit: params[:unit],
      # days_until_expiration: params[:days_until_expiration],
      # date_of_purchase: params[:date_of_purchase],
      name: params[:name],
      quantity: params[:quantity]
    )
    food.to_json
  end

  post '/foods' do
    new_item = Food.create(
      name: params[:name],
      quantity: params[:quantity],
      unit: params[:unit],
      category: params[:category],
      img_url: params[:img_url],
      days_until_expiration: params[:daysUntilExpiration],
      date_of_purchase: params[:dateOfPurchase],
    )
    new_item.to_json
  end

  delete "/foods/:id" do
    food = Food.find(params[:id])
    food.destroy
    food.to_json
  end



end
