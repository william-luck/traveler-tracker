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
        travelers_in_country
    end

    # def first_one
    #     self.all.first
    # end

    # Need a method to access all the travlers of a country? 
    # Wouldn't this just be Countries.travelers?
    # Not exactly... Has to be find matching country from the list, and then select that country and all of its travelers

    # So we use the class / instance method to return an array, then conver that to JSON

    # We could either do this from country.travelers (need a get a way to get that country first)

    
end