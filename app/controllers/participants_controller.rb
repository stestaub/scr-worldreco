class ParticipantsController < ApplicationController
  def create
    @participant = Participant.new registration_params
    if @participant.save
      render 'show'
    else
      @participant_count = Participant.count_per_timeslot
      render 'new'
    end

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
                                           :timeslot1,
                                           :mobile_number,
                                           :phonenumber, :accept_agb, :confirm_age)
    end
end
