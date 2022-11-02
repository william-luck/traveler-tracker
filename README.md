# Front end repo: https://github.com/william-luck/my-app-frontend

## Installation
To start this application, fork and clone this repo as well as the above front-end repo.

 In this back end repo, begin by typing `bundle install` in the console. Then input the following commands in the console: 
 * `rake db:migrate`
 * `rake db:seed`
 * `rake server`

After the server is running, in the front end repo, type `npm install` and `npm start` in the console to start the application. 


# Description

This repository serves as the backend for a traveler tracker with a frontend built using react: 
![Image description](https://dev-to-uploads.s3.amazonaws.com/uploads/articles/cx61fm5yc64autsfhazz.gif)


This application is used for tracking travelers in a country at a given time. Users can scroll through a list of all countries, see the number of travelers in that country, select the country for a list of current travelers, and see the individual visits for the traveler in that country. Additionally, users can see the traveler profile, and there are options to add a new traveler or a new visit for an existing traveler.

The application makes use of three models, Country, Visit, and Traveler. A given country has many travelers, through the visits recorded in that country. Similarly, a traveler has many countries, through visits recorded in each of the countries they visited. 

```ruby
class Country < ActiveRecord::Base

    has_many :visits
    has_many :travelers, through: :visits
```
```ruby
class Traveler < ActiveRecord::Base 
    
    has_many :visits
    has_many :countries, through: :visits
```

Visits are set up as the join table, with each visit belonging to a country and traveler using their IDs. The visits are set up as accommodation stays, as in hotels, hostels, Airbnbs, and homestays. For simplicity, a visit/accommodation is a unique occurrence, and no more than one traveler can stay at an accommodation at a time. Different travelers are not assigned to the same visit at a later date. 

```ruby
class Visit < ActiveRecord::Base
    belongs_to :country
    belongs_to :traveler
```

## ERD
![Image description](https://dev-to-uploads.s3.amazonaws.com/uploads/articles/bs732cfhf1b81gnog6oz.png)

`from_country_id` does not have an association to a country. It is just used as a reference to a country to get that traveler's nationality, using the country IDs. This serves as a substitute for the full country name, and it was easier this way to match with the country instead of a string. 

## Seeding

I wanted to ensure that there was an adequate number of travelers in each country, with each traveler making three to seven visits in five different countries, at a minimum. There are 500 travelers created using seeds.db. Each traveler has a random nine-digit passport number, and each traveler is assigned a random nationality out of a list of 244 countries/territories. For each traveler, I used an array of five elements, each between 1 and 244, to correspond with countries that they visit. For each of those countries/elements, three to seven visits are created in that country for that traveler. 

```ruby
500.times do 
    traveler = Traveler.create(
        traveler_name: Faker::Name.name,
        passport_number: "#{rand(100..999)}#{rand(100..999)}#{rand(100..999)}" ,
        from_country_id: rand(1..244)
    )

    random = Array[rand(1..244), rand(1..244), rand(1..244), rand(1..244), rand(1..244)]
    random.each do |element| 
        rand(3..7).times do 
            Visit.create(
                accomodation_name: Faker::Company.name,
                accomodation_type: ['Hotel', 'Hostel', 'AirBnb', 'Homestay'].sample,
                address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
                cost_per_night: rand(10..200),
                country_id: element,
                traveler_id: traveler.id
            )
        end
    end
end
```

Additionally, travelers may have some day trips to countries, meaning that they only have one visit recorded in that country: 
```ruby
1000.times do
    Visit.create(
        accomodation_name: Faker::Company.name,
        accomodation_type: ['Hotel', 'Hostel', 'AirBnb', 'Homestay'].sample,
        address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
        cost_per_night: rand(10..200),
        country_id: rand(1..244),
        traveler_id: rand(1..500)
    )
end
```

## Examples of Traveler and Country methods

#### Traveler

The application allows users to view a traveler's profile, with associated travel statistics. One of the statistics I included was a count of both day and 'full' trips, meaning countries where travelers stayed more than one day. I defined an instance method in the traveler model to get a count of the number of such trips: 
```ruby
def tally_day_full_trips
        tallied = self.countries.tally
        day_trips = tallied.select{|k,v| v == 1}
        full_trips = tallied.select{|k,v| v > 1}
        day_and_full_tally = {
            day_trips: day_trips.count,
            full_trips: full_trips.count
        }
        day_and_full_tally
    end
```
First, we get a list of all the countries that the traveler visited. Because the travelers have countries _through_ visits, calling the `#countries` method on a traveler returns duplicates of the same country. Instead of calling `#uniq` to get a list of the countries, we can use the full list to count repeats with the `#tally` method. The tally_day_full_trips method then sorts the repeated instances of countries into full trips, and single instances of countries into day trips.

To retrieve the current country of a traveler, we call `#countries` on the instance of that traveler, and return the last country on the list. The last country indicates the country that they are currently in, and this is also used for moving travelers between countries, recording a different visit in a different country. 
```ruby
def current_country
        self.countries[-1]
    end
```

#### Country
Getting the current country of a traveler was pretty straight forward, but there are more steps involved in getting the travelers currently in an instance of a country. Calling `#travelers` on an instance of a country returns all the travelers that were _ever_ in the country, not just the ones currently in the country. 

I defined a country method to get the travelers currently in the country, using the `#current_country` method define above: 
```ruby
def travelers_currently_in_country
        travelers_in_country = []
        all_travelers = self.travelers
        all_travelers.each do |traveler|
            current_country = traveler.current_country
            if current_country.id == self.id
                travelers_in_country << traveler
            end
        end
        travelers_in_country.uniq
    end
```
For each traveler in the country _ever_, we iterate through the array, and get the ID of the country they are currently in. If that current country ID matches the ID of the country instance, that traveler is shoveled to a new array. That array is then returned to obtain a list of travelers currently in that country. 


## Expansion

While I added columns for cost_per_night in visits, and currency in countries, I did not make use of them. I left these in for future expansion of calculating the total amount spent in each country, or the total amount spent overall. This would be quite difficult to immediately deal with because of the currency conversions associated with each country. I could use the total amount spent, and convert it the currency used in their home country, and display it on their profile. 

