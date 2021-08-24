class FoodsController < ApplicationController
    
      get "/foods" do
        erb :'foods/foods'
      end

end