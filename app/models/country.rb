require 'pry'

class Country < ActiveRecord::Base

    has_many :visits
    has_many :travelers, through: :visits

    def travelers_currently_in_country
        travelers_in_country = []
        all_travelers = self.travelers
        all_travelers.each do |traveler|
            current_country = traveler.current_country
            if current_country.id == self.id
                travelers_in_country << traveler
            end
        end
        travelers_in_country.uniq
    end

    def count_of_travelers
        travelers_currently_in_country.count
    end

    def self.travelers_in_country_array
        number_array = []
        Country.all.each do |country|
            number_array << country.count_of_travelers
        end
        number_array
    end


end