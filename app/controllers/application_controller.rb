class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # items
  get "/items" do
    goods = Item.all.to_json
  end

  get '/items/:id' do
    good = Item.find(params[:id])
    good.to_json
  end

  post '/items' do
    good = Item.create(
      name: params[:name],
      amount: params[:amount],
      image_url: params[:image_url],
      farmer_id: params[:farmer_id],
      customer_id: params[:customer_id]
    )
  end

  patch '/items/:id' do
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

  delete '/items/:id' do
    good = Item.find(params[:id])
    good.destroy
    good.to_json
  end

  #customers
  get "/customers" do
    Customer.all.to_json
  end

  post '/customers' do
    customer = Customer.create(name: params[:name])
  end
  
  patch '/customers/:id' do
    customer = Customer.find(params[:id])
    customer.update(name: params[:name])
  end

  get "/farmers" do
    goods = Farmer.all.to_json
  end

  post '/farmers' do
    Farmer.create(
      name: params[:name],
      phone: params[:phone],
      location: params[:location],
      password: params[:password],
      confpassword: params[:confpassword]
    )
  end

end

