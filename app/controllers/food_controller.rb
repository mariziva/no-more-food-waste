class FoodsController < Sinatra::Base

    configure do
        set :public_folder, 'public'
        set :views, 'app/views'
      end
    
      get "/foods" do
        erb :'foods'
      end

  
end