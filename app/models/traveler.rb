class Traveler < ActiveRecord::Base 
    has_many :visits
    has_many :countries, through: :visits

    # Don't need nationality name
    # Don't need passport number

    def total_countries_visited
        self.countries.uniq.count
    end

    def count_of_stays
        self.visits.count
    end

end