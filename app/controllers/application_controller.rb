class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # Add your routes here
  get "/dealerships" do
    dealerships = Dealership.all
    dealerships.to_json
  end

  get '/dealerships/:id' do
    dealership = Dealership.find(param[:id])
    dealership.to_json(include :cars)
  end

  get '/cars/by_price' do
    cars = Car.by_price.
    cars.to_json
  end

  get '/cars/highest_value' do
    cars = Car.by_price.first
    cars.to_json
  end

  get '/cars/lowest_value' do
    cars = Car.by_price.last
    cars.to_json
  end



end