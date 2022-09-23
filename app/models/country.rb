class Country < ActiveRecord::Base
    has_many :visits
    has_many :travlers, through: :visits
end