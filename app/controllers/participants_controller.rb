class ParticipantsController < ApplicationController
  before_action :authenticate_participant!, only: [:show, :edit, :update, :destroy]

  def create
    @participant = Participant.new registration_params
    if @participant.save
      sign_in @participant
      RegistrationConfirmationMailer.registration_confirmation_mail(@participant).deliver
      @updated
      render 'show'
    else
      @participant_count = Participant.count_per_timeslot
      render 'new'
    end

  end

  def update
    @participant = current_participant
    if @participant.update_attributes(registration_params)
      flash[:success] = "Deine Daten wurden erfolgreich aktualisiert. Eine E-Mail mit deiner neuen Anmeldung wurde an dich gesendet."
      RegistrationConfirmationMailer.registration_confirmation_mail(@participant).deliver
      redirect_to participant_root_path
    else
      @participant_count = Participant.count_per_timeslot
      render 'edit'
    end
  end

  def destroy
    @participant = current_participant
    @participant.destroy
    flash[:info] = "Schade, dass Du nicht dabei sein kannst. Falls Du dich doch noch anders entscheiden solltest, kannst Du dich jederzeit wieder neu anmelden."
    redirect_to root_path
  end

  def edit
    @participant_count = Participant.count_per_timeslot
    @participant = current_participant
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
                                           :city,
                                           :mobile_number,
                                           :phonenumber, :accept_agb, :confirm_age)
    end
end
