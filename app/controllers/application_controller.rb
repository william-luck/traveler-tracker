require 'pry'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get '/countries' do
    countries = Country.all
    countries.to_json(include: :travelers_currently_in_country)
  end

  get '/countries/:id' do
    country = Country.find(params[:id])
    country.to_json(include: { travelers_currently_in_country: {include: :visits_of_current_country }})
  end

  get '/traveler/:id' do
    if params[:id].length < 9
      traveler = Traveler.find(params[:id])
    else
      traveler = Traveler.find_by(passport_number: params[:id])
    end
    traveler.to_json(include: :countries, methods: :nationality)
  end

  patch '/traveler/:id' do
    traveler = Traveler.find(params[:id])
    traveler.edit_name(params).to_json
    traveler.edit_passport_number(params).to_json
  end

  delete '/traveler/:id' do
    traveler = Traveler.find(params[:id])
    traveler.delete_traveler.to_json
  end

  post '/traveler' do
    country = Country.find_by(country_name: params[:nationality])
    Traveler.add_traveler(params, country.id).to_json
  end

  post '/visit' do
    country = Country.find_by(country_name: params[:country_name])
    traveler = Traveler.find_by(passport_number: params[:passport_number])
    Visit.add_visit(params, country.id, traveler.id).to_json
  end

end
