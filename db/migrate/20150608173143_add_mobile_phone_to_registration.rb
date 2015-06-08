class AddMobilePhoneToRegistration < ActiveRecord::Migration
  def change
    add_column :registrations, :mobile_number, :string
  end
end
