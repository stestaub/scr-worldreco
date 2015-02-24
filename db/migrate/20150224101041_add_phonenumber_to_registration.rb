class AddPhonenumberToRegistration < ActiveRecord::Migration
  def change
    add_column :registrations, :phonenumber, :string
  end
end
