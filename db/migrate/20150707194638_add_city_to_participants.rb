class AddCityToParticipants < ActiveRecord::Migration
  def change
    add_column :registrations, :city, :string
  end
end
