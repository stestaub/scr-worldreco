class AddDefinitToRegistrations < ActiveRecord::Migration
  def change
    add_column :registrations, :definite, :boolean
  end
end
