ActiveAdmin.register Admin do

  index do
    id_column
    column :email
    actions
  end

  form do |f|
    f.inputs "Admin" do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

  permit_params [:email, :password, :password_confirmation]


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
