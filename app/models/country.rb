class Country < ActiveRecord::Base

    attr_accessor :country

    has_many :visits
    has_many :travelers, through: :visits

    
end