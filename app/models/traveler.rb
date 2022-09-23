class Traveler < ActiveRecord::Base 
    has_many :visits
    has_many :countries, through: :visits

end