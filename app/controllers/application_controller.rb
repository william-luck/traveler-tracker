require 'pry'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  
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

  get '/deleted_traveler_country/:id' do
    traveler = Traveler.find(params[:id])
    traveler.current_country.to_json
  end

  get '/traveler_count' do
    Country.travelers_in_country_array.to_json
  end

  get '/traveler_statistics/:id' do
    traveler = Traveler.find(params[:id])
    statistics = traveler.traveler_statistics
    statistics.to_json
  end

  patch '/traveler_name/:id' do
    traveler = Traveler.find(params[:id])
    traveler.update(
      traveler_name: params[:traveler_name]
    )
    traveler.to_json
  end

  patch '/traveler_passport/:id' do
    traveler = Traveler.find(params[:id])
    traveler.update(
      passport_number: params[:passport_number]
    )
    traveler.to_json
  end

  delete '/traveler_delete/:id' do
    traveler = Traveler.find(params[:id])
    traveler.destroy
    traveler.to_json
  end

  post '/add_traveler' do
    # Finding the matching country by enetered nationality (user will not know the country id)
    country = Country.find_by(country_name: params[:nationality])

    traveler = Traveler.create(
      traveler_name: params[:traveler_name],
      passport_number: params[:passport_number],
      from_country_id: country.id
    )

    traveler.to_json

  end

  post '/add_visit' do

    country = Country.find_by(country_name: params[:country_name])
    traveler = Traveler.find_by(passport_number: params[:passport_number])

    visit = Visit.create(
      country_id: country.id,
      traveler_id: traveler.id,
      accomodation_name: params[:accomodation_name],
      accomodation_type: params[:accomodation_type],
      address: "#{params[:address]}, #{params[:city]}",
      cost_per_night: params[:cost_per_night]
    )

    visit.to_json

  end

  # t.integer "country_id"
  #   t.integer "traveler_id"
  #   t.string "accomodation_name"
  #   t.string "accomodation_type"
  #   t.string "address"
  #   t.integer "cost_per_night"

  



  # get '/travelers' do
  #   countries =

  # Traveler.countries.last is the country that they are currently in. Get that ID. 
  # Once we have the country ID, display the visits from the latest country. 
    

end
