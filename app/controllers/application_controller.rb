require 'pry'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
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
    traveler.edit_name(params).to_json
  end

  patch '/traveler_passport/:id' do
    traveler = Traveler.find(params[:id])
    traveler.edit_passport_number(params).to_json
  end

  delete '/traveler_delete/:id' do
    traveler = Traveler.find(params[:id])
    traveler.delete_traveler.to_json

  end

  post '/add_traveler' do

    country = Country.find_by(country_name: params[:nationality])
    Traveler.add_traveler(params, country.id).to_json

  end

  post '/add_visit' do
    country = Country.find_by(country_name: params[:country_name])
    traveler = Traveler.find_by(passport_number: params[:passport_number])
    Visit.add_visit(params, country.id, traveler.id).to_json

  end

  get '/lookup_traveler/:passport_number' do
    traveler = Traveler.find_by(passport_number: params[:passport_number])
    traveler.traveler_statistics.to_json
  end

end
