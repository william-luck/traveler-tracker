class Country < ActiveRecord::Base

    attr_accessor :country

    has_many :visits
    has_many :travelers, through: :visits

    # def first_one
    #     self.all.first
    # end

    # Need a method to access all the travlers of a country? 
    # Wouldn't this just be Countries.travelers?
    # Not exactly... Has to be find matching country from the list, and then select that country and all of its travelers

    # So we use the class / instance method to return an array, then conver that to JSON

    # We could either do this from country.travelers (need a get a way to get that country first)

    
end