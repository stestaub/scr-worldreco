class AddConfirmAgeConfirmAgbToRegistration < ActiveRecord::Migration
  def change
    add_column :registrations, :confirm_age, :boolean
    add_column :registrations, :accept_agb, :boolean
  end
end
