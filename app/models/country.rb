require 'pry'

class Country < ActiveRecord::Base

    attr_accessor :country

    has_many :visits
    has_many :travelers, through: :visits

    def travelers_currently_in_country
        travelers_in_country = []
        all_travelers = self.travelers
        # This gets all the list of travelers... could we then go through the array, check their visits, and if their last visit matches the current country, push to new array of travelers 
        all_travelers.each do |traveler|
            # Check their total countries
            total_countries = traveler.countries
            current_country = total_countries.last
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

    # def first_one
    #     self.all.first
    # end

end