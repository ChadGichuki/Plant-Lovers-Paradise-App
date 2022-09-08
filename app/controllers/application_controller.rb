class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/plants" do
    { message: "Plants" }.to_json
  end

  get "/plants/:id" do
    { message: "Plant moja" }.to_json
  end

  post "/plants" do
    #{ message: "Plants" }.to_json
  end

  put "/plants/:id" do
    #{ message: "Plants" }.to_json
  end

  delete "/plants" do
    #{ message: "Plants" }.to_json
  end

  get "/buyers" do
    { message: "All buyers" }.to_json
  end

  get "/buyers/:id" do
    { message: "Buyer Mmoja" }.to_json
  end

end
