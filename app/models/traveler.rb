require 'pry'

class Traveler < ActiveRecord::Base 
    has_many :visits
    has_many :countries, through: :visits

    # Don't need nationality name
    # Don't need passport number

    def total_countries_visited
        self.countries.uniq.count
    end

    def country_visit_names
        names = []
        self.countries.uniq.each do |country| 
            names << country.country_name
        end
        names
    end

    def continent_visit_names
        continents = []
        self.countries.uniq.each do |country|
            continents << country.continent
        end
        continents.uniq
    end

    def count_of_stays
        self.visits.count
    end

    def tally_day_full_trips
        tallied = self.countries.tally
        day_trips = tallied.select{|k,v| v == 1}
        full_trips = tallied.select{|k,v| v > 1}
        # tallied.each do |tally_total|
        #     tally_total.each do |k, v|
        #         if v != 1
        #             full_trips << k
        #         elsif v == 1
        #             day_trips << k
        #         end
        #     end
        # end
        day_and_full_tally = {
            day_trips: day_trips.count,
            full_trips: full_trips.count
        }
        day_and_full_tally
    end

    def count_of_day_trips
        self.tally_day_full_trips[:day_trips]
    end

    def count_of_full_trips
        self.tally_day_full_trips[:full_trips]
    end

    def average_stays_per_country
        tallied = self.countries.tally
        ((tallied.values.reduce(:+).to_f)/(tallied.length)).round
    end

    def longest_time_in_country_in_days
        tallied_sorted = self.countries.tally.sort_by(&:last)
        # Gets the number of days of the longest country visit
        tallied_sorted.last[-1]
        
    end

    def countries_with_longest_days
        longest_days = self.longest_time_in_country_in_days
        # Gets the instances of countries with the longest amount of days, accounts for ties
        self.countries.tally.sort_by(&:last).select {|k,v| v == longest_days}
    end

    def shortest_time_in_country_in_days
        tallied_sorted = self.countries.tally.sort_by(&:last)
        # Gets the number of days of the shortest country visit
        tallied_sorted[0].last
    end

    def countries_with_shortest_days
        shortest_days = self.shortest_time_in_country_in_days
        # Gets the instances of countries with the shortest amount of days, accounts for ties
        self.countries.tally.sort_by(&:last).select {|k,v| v == shortest_days}
    end


    def traveler_statistics
        info = {
            name: self.traveler_name,
            passport: self.passport_number,
            total_countries: self.total_countries_visited,
            countries_visited_names: self.country_visit_names,
            total_continents: self.continent_visit_names.count,
            continent_visit_names: self.continent_visit_names,
            total_stays: self.count_of_stays,
            day_trips: self.count_of_day_trips,
            full_trips: self.count_of_full_trips,
            average_stays: self.average_stays_per_country,
            longest_visit: self.longest_time_in_country_in_days,
            longest_visited_countries: self.countries_with_longest_days,
            shortest_vist: self.shortest_time_in_country_in_days,
            shortest_visited_countries: self.countries_with_shortest_days
        }
    end




end