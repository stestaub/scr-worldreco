ActiveAdmin.register Registration do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :first_name,
                :last_name,
                :email,
                :timeslot1,
                :timeslot2,
                :timeslot3,
                :phonenumber, :accept_agb, :confirm_age
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
