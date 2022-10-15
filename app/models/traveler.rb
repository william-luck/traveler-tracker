require 'pry'

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

    def tally_day_full_trips
        tallied = self.countries.tally
        day_trips = []
        full_trips = []
        tallied.each do |tally_total|
            tally_total.each do |k, v|
                if v != 1
                    full_trips << k
                elsif v == 1
                    day_trips << k
                end
            end
        end
        day_and_full_tally = {
            'day_trips' => day_trips.count,
            'full_trips' => full_trips.count / 2
        }
        day_and_full_tally
    end

    def count_of_day_trips
        self.tally_day_full_trips['day_trips']
    end

    def count_of_full_trips
        self.tally_day_full_trips['full_trips']
    end

    def average_stays_per_country
        tallied = self.countries.tally
        ((tallied.values.reduce(:+).to_f)/(tallied.length)).round
    end

    def traveler_statistics
        info = {
            name: self.traveler_name,
            passport: self.passport_number,
            total_countries: total_countries_visited,
            total_stays: count_of_stays,
            day_trips: count_of_day_trips,
            full_trips: count_of_full_trips,
            average_stays: average_stays_per_country
        }
    end




end