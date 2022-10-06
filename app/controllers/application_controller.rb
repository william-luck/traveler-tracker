class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/test" do
    { message: "Good luck with your project!" }.to_json
    'hello world'
  end

  get '/countries' do
    countries = Country.all
    countries.to_json
  end

  get '/travelers/:id' do
    selected_country = Country.find(params[:id])
    selected_country.travelers.to_json 
  end

  get '/visits/:id' do
    selected_traveler = Traveler.find(params[:id])
    selected_traveler.visits.to_json
  end

  get '/findcountryname/:id' do
    country = Country.find(params[:id])
    country.to_json
  end

  # get '/travelers' do
  #   countries =
    

end
