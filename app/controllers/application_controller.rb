class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/goods" do
    goods = Good.all
    goods.to_json
  end

  get '/goods/:id' do
    good = Good.find(params[:id])
    good.to_json
  end

  post '/goods' do
    good = Goods.create(
      name: params[:name],
      amount: params[:amount],
      farmer_id: params[:farmer_id],
      customer_id: params[:customer_id]
    )
  end

  patch '/goods/:id' do
    good = Good.find(params[:id])
    good.update(
      name: params[:name],
      amount: params[:amount],
      farmer_id: params[:farmer_id],
      customer_id: params[:customer_id]
    )
    good.to_json
  end

  delete '/goods/:id' do
    good = Good.find(params[:id])
    good.destroy
    good.to_json
  end
end
