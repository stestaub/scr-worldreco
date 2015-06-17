class ParticipantsController < ApplicationController
  before_action :authenticate_participant!, only: :show

  def create
    @participant = Participant.new registration_params
    if @participant.save
      sign_in @participant
      render 'show'
    else
      @participant_count = Participant.count_per_timeslot
      render 'new'
    end

  end

  def show
    @participant = current_participant
  end

  def new
    @participant = Participant.new
    @participant_count = Participant.count_per_timeslot
  end

  private
    def registration_params
      params.require(:participant).permit(:first_name,
                                           :last_name,
                                           :email,
                                           :password,
                                           :password_confirmation,
                                           :timeslot1,
                                           :mobile_number,
                                           :phonenumber, :accept_agb, :confirm_age)
    end
end
