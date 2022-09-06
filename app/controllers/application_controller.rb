class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/goods" do
    goods = Goods.all
    goods.to_json
  end
end
