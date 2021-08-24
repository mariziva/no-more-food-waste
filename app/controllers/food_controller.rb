class FoodsController < ApplicationController
    
      get "/foods" do
        @foods = Food.all
        erb :'foods/index'
      end

end