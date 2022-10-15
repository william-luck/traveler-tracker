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

  get '/travelers_in_country/:id' do
    selected_country = Country.find(params[:id])
    selected_country.travelers_currently_in_country.to_json
  end

  get '/visits/:id' do
    selected_traveler = Traveler.find(params[:id])
    selected_traveler.visits.to_json
  end

  get '/findcountryname/:id' do
    country = Country.find(params[:id])
    country.to_json
  end

  get '/visits' do
    Visit.all.to_json
  end

  get '/traveler_count' do
    Country.travelers_in_country_array.to_json
  end

  get '/traveler_statistics/:id' do
    traveler = Traveler.find(params[:id])
    statistics = traveler.traveler_statistics
    statistics.to_json
  end

  # get '/travelers' do
  #   countries =

  # Traveler.countries.last is the country that they are currently in. Get that ID. 
  # Once we have the country ID, display the visits from the latest country. 
    

end
