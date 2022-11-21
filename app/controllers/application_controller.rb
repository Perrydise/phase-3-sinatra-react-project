class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # Add your routes here
  get "/dealerships" do
    dealerships = Dealership.all
    dealerships.to_json
  end

  get "/cars" do
    cars = Car.all
    cars.to_json
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

  post '/cars' do
    puts params
    puts params[:dealership]
    puts params[:make]
    puts params[:color]
    dealership_name = Dealership.find(params[:dealership]).name
    car = Car.create(
      price: params[:price],
      make: params[:make],
      model: params[:model],
      year: params[:year],
      color: params[:color],
      dealership_id: params[:dealership],
      dealership_name: dealership_name
    )
    car.to_json
  end

  post '/dealerships' do
    dealership = Dealership.create(
      name: params[:name]
    )
    dealership.to_json
  end

  patch '/cars/:id' do
    puts params[:id]
    puts params
    car = Car.find(params[:id])
    puts car
    car.update(
      make: params[:make],
      model: params[:model],
      year: params[:year],
      color: params[:color],
      price: params[:price].to_i
    )
    puts car
    car.to_json
    puts car
  end

  delete '/cars/:id' do
    car = Car.find(params[:id])
    car.destroy
    car.to_json
  end
end