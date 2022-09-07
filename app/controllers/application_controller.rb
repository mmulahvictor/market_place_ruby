class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    goods = Item.all
    goods.to_json
  end

  get '/:id' do
    good = Item.find(params[:id])
    good.to_json
  end

  post '/' do
    good = Item.create(
      name: params[:name],
      amount: params[:amount],
      farmer_id: params[:farmer_id],
      customer_id: params[:customer_id]
    )
  end

  patch '/:id' do
    good = Item.find(params[:id])
    good.update(
      name: params[:name],
      amount: params[:amount],
      farmer_id: params[:farmer_id],
      customer_id: params[:customer_id]
    )
    good.to_json
  end

  delete '/:id' do
    good = Item.find(params[:id])
    good.destroy
    good.to_json
  end
end
