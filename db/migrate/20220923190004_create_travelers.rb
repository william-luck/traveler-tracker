class CreateTravelers < ActiveRecord::Migration[6.1]
  def change

    create_table :travelers do |t|
      t.string :traveler_name
      t.integer :passport_number
      t.integer :from_country_id
    end
      
  end
end
