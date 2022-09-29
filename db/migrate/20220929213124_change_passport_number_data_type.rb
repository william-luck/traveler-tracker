class ChangePassportNumberDataType < ActiveRecord::Migration[6.1]
  def change
    change_column :travelers, :passport_number, :string
  end
end
