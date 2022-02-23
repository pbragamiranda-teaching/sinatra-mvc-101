require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

get "/" do
  @restaurants = Restaurant.all
  erb :index
end

get "/restaurants/:id" do
  @restaurant = Restaurant.find(params[:id])
  erb :show
end

post "/restaurants" do
  # Get the info from the user's form
  name = params[:name]
  city = params[:city]
  # Create a new Restaurant with
  Restaurant.create(name: name, city: city)
  # Redirect somewhere
  redirect "/"
end