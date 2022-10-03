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
    

end
