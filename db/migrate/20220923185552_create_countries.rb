class CreateCountries < ActiveRecord::Migration[6.1]
  def change

    create_table :countries do |t|
      t.string :country_name
      t.string :continent
      t.string :currency
    end

  end
end
