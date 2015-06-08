class RegistrationsController < ApplicationController
  def create
    @registration = Registration.new registration_params
    if @registration.save
      render 'show'
    else
      @registration_counts = Registration.count_per_timeslot
      render 'new'
    end

  end

  def new
    @registration = Registration.new
    @registration_counts = Registration.count_per_timeslot
  end

  private
    def registration_params
      params.require(:registration).permit(:first_name,
                                           :last_name,
                                           :email,
                                           :timeslot1,
                                           :timeslot2,
                                           :timeslot3,
                                           :mobile_number,
                                           :phonenumber, :accept_agb, :confirm_age)
    end
end
