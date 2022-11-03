class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # Add your routes here
  get "/dealerships" do
    dealerships = Dealership.all
    dealerships.to_json
  end


end