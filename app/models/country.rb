class Country < ActiveRecord::Base

    attr_accessor :country
    
    has_many :visits
    has_many :travlers, through: :visits

    
end