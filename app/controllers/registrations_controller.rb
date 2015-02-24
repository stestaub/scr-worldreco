class RegistrationsController < ApplicationController
  def create
    @registration = Registration.new registration_params
    if @registration.save
      render 'show'
    else
      render 'homepage/index'
    end

  end

  private
    def registration_params
      params.require(:registration).permit(:first_name,
                                           :last_name,
                                           :email,
                                           :timeslot1,
                                           :timeslot2,
                                           :timeslot3,
                                           :phonenumber, :accept_agb, :confirm_age)
    end
end
