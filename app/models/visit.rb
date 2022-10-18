class Visit < ActiveRecord::Base
    belongs_to :country
    belongs_to :traveler

    def self.add_visit(params, country, traveler)
        Visit.create(
            country_id: country, 
            traveler_id: traveler,
            accomodation_name: params[:accomodation_name],
            accomodation_type: params[:accomodation_type],
            address: "#{params[:address]}, #{params[:city]}",
            cost_per_night: params[:cost_per_night]
        )
    end

end

