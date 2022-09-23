class CreateVisits < ActiveRecord::Migration[6.1]
  def change
    create_table :visits do |t|
      t.integer :country_id
      t.integer :traveler_id
      t.string :accomodation_name
      t.string :accomodation_type
      t.string :address
      t.integer :cost_per_night
    end
  end
end
