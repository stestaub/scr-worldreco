ActiveAdmin.register Participant do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :first_name,
                :last_name,
                :email,
                :timeslot1,
                :phonenumber, :accept_agb, :confirm_age
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  form do |f|
    f.inputs "Admin" do
      f.input :email
      f.input :first_name
      f.input :last_name
      f.input :timeslot1
      f.input :phonenumber
    end
    f.actions
  end


end
