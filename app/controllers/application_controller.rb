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

  #Not completed
  get "plants/most_popular" do
    plant = Plant.by_purchases.first
    plant.to_json(include: {purchases: {include: :buyer}})
  end

  post "/plants" do
    new_plant = Plant.create(name: params[:name], species: params[:species], best_climate: params[:best_climate], water_frequency: params[:water_frequency], no_in_stock: params[:no_in_stock], image: params[:image])
    new_plant.to_json
  end

  patch "/plants/:id" do
    plant = Plant.find(params[:id])
    plant.update(no_in_stock: params[:no_in_stock])
    plant.to_json(include: {purchases: {include: :buyer}})
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
    buyer = Buyer.find(params[:id])
    buyer.to_json(include: {purchases: {include: :plant}})
  end

  patch "/buyers/:id" do
    buyer = Buyer.find(params[:id])

    buyer.to_json(include: {purchases: {include: :plant}})
  end

end
