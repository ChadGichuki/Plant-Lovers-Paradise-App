class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/plants" do
    plants = Plant.all
    plants.to_json
  end

  get "/plants/:id" do
    plant = Plant.find(params[:id])
    plant.to_json(include: {purchases: {include: :buyer}})
  end

  get "plants/most_popular" do
    plant = Plant.by_purchases.first
    plant.to_json(include: {purchases: {include: :buyer}})
  end

  post "/plants" do
    new_plant = Plant.create(name: params[:name], species: params[:species], )
    new_plant.to_json
  end

  put "/plants/:id" do
    #{ message: "Plants" }.to_json
  end

  delete "/plants/:id" do
    plant = Plant.find(params[:id])
    plant.destroy
    plant.to_json
  end

  get "/buyers" do
    buyers = Buyer.all
    buyers.to_json
  end

  get "/buyers/:id" do
    buyers = Buyer.find(params[:id])
    buyers.to_json(include: {purchases: {include: :plant}})
  end

end
