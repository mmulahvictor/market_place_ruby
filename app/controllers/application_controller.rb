class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # items
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
      image_url: params[:image_url],
      farmer_id: params[:farmer_id],
      customer_id: params[:customer_id]
    )
  end

  patch '/:id' do
    good = Item.find(params[:id])
    good.update(
      name: params[:name],
      amount: params[:amount],
      image_url: params[:image_url],
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

  #customers
  post '/customers' do
    customer = Customer.create(name: params[:name])
  end
  
  patch '/customers/:id' do
    customer = Customer.find(params[:id])
    customer.update(name: params[:name])
  end

end

