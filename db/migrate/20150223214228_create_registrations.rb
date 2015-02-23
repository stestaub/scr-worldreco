class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.time :timeslot1
      t.time :timeslot2
      t.time :timeslot3

      t.timestamps
    end
  end
end
