class RegistrationsController < ApplicationController
  def create
    @registration = Registration.new registration_params
    @registration.save!
    render 'show'
  end

  private
    def registration_params
      params.require(:registration).permit(:first_name, :last_name, :email, :timeslot1, :timeslot2, :timeslot3)
    end
end
