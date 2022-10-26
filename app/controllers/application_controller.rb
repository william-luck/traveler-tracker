require 'pry'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Good
  get '/countries' do
    countries = Country.all
    countries.to_json(include: :travelers_currently_in_country)
  end

  # Good
  get '/countries/:id' do
    country = Country.find(params[:id])
    country.to_json(include: { travelers_currently_in_country: {include: :visits }})
  end

  # Good
  get '/visits/:id' do
    selected_traveler = Traveler.find(params[:id])
    selected_traveler.visits.to_json
  end

  # Good
  get '/traveler/:id' do
    traveler = Traveler.find(params[:id])
    statistics = traveler.traveler_statistics
    statistics.to_json
  end

  # Could I do this just with travler/:id as above, except patch?
  patch '/traveler_name/:id' do
    traveler = Traveler.find(params[:id])
    traveler.edit_name(params).to_json
  end

  # Combine these two but just have different form data sent by the front end? As Nancy said? 
  patch '/traveler_passport/:id' do
    traveler = Traveler.find(params[:id])
    traveler.edit_passport_number(params).to_json
  end

  # delete traveler/:id

  delete '/traveler_delete/:id' do
    traveler = Traveler.find(params[:id])
    traveler.delete_traveler.to_json

  end

  # post traveler

  post '/add_traveler' do

    country = Country.find_by(country_name: params[:nationality])
    Traveler.add_traveler(params, country.id).to_json

  end

  # post visit

  post '/add_visit' do
    country = Country.find_by(country_name: params[:country_name])
    traveler = Traveler.find_by(passport_number: params[:passport_number])
    Visit.add_visit(params, country.id, traveler.id).to_json

  end

  # Don't really need this one.... traveler statistics
  get '/lookup_traveler/:passport_number' do
    traveler = Traveler.find_by(passport_number: params[:passport_number])
    traveler.traveler_statistics.to_json
  end

end
